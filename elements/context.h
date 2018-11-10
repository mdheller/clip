/**
 * This file is part of the "signaltk" project
 *   Copyright (c) 2018 Paul Asmuth
 *
 * libstx is free software: you can redistribute it and/or modify it under
 * the terms of the GNU General Public License v3.0. You should have received a
 * copy of the GNU General Public License along with this program. If not, see
 * <http://www.gnu.org/licenses/>.
 */
#pragma once
#include <stack>
#include "element.h"
#include "elements/plot/plot_config.h"
#include "graphics/layer.h"

namespace signaltk {

struct Context {
  std::stack<ElementRef> elements;
  Layer frame;
};

template <typename T>
Status stack_head(Context* ctx, T** head);

template <typename T>
Status stack_head(const Context& ctx, T const** head);

} // namespace signaltk

#include "context_impl.h"