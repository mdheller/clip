/**
 * This file is part of the "FnordMetric" project
 *   Copyright (c) 2014 Paul Asmuth, Google Inc.
 *
 * FnordMetric is free software: you can redistribute it and/or modify it under
 * the terms of the GNU General Public License v3.0. You should have received a
 * copy of the GNU General Public License along with this program. If not, see
 * <http://www.gnu.org/licenses/>.
 */
#include "fnord/comm/rpc.h"
#include "fnord/logging/logger.h"

namespace fnord {
namespace comm {

AnyRPC::AnyRPC(
    const std::string& method) :
    method_(method),
    is_error_(false),
    is_ready_(false),
    autodelete_(false) {}

AnyRPC::~AnyRPC() {}

const std::string& AnyRPC::method() const {
  return method_;
};

void AnyRPC::wait() {
  ready_wakeup_.waitForWakeup(0);

  if (is_error_) {
    RAISE(kRPCError, error_);
  }
}

void AnyRPC::onReady(std::function<void()> callback) {
  ready_wakeup_.onWakeup(0, callback);
}

void AnyRPC::ready() noexcept {
  std::unique_lock<std::mutex> lk(mutex_);
  is_ready_ = true;

  if (autodelete_) {
    lk.unlock();
    reap();
  } else {
    ready_wakeup_.wakeup();
  }
}

void AnyRPC::error(const std::exception& e) {
  is_error_ = true;

  try {
    auto rte = dynamic_cast<const fnord::Exception&>(e);
    error_ = StringUtil::format("$0: $1", rte.getTypeName(), rte.getMessage());
  } catch (const std::exception& cast_error) {
    error_ = e.what();
  }

  ready();
}

void AnyRPC::fireAndForget(std::unique_ptr<AnyRPC>&& rpc) {
  auto rpc_raw = rpc.release();
  rpc_raw->fireAndForget();
}

void AnyRPC::fireAndForget() {
  std::unique_lock<std::mutex> lk(mutex_);

  if (is_ready_) {
    lk.unlock();
    reap();
    return;
  } else {
    autodelete_ = true;
  }
}

void AnyRPC::reap() noexcept {
  if (is_error_) {
    fnord::log::Logger::get()->logf(
        log::kWarning,
        "Fire-And-Forget RPC failed: $0",
        error_);
  }

  delete this;
}

}
}
