# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "fnordmetric"
  s.version = "0.5.9"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Paul Asmuth"]
  s.date = "2012-01-04"
  s.description = "FnordMetric is a Ruby Event-Tracking gem on steroids"
  s.email = "paul@paulasmuth.com"
  s.extra_rdoc_files = [
    "README.md"
  ]
  s.files = [
    ".travis.yml",
    "Gemfile",
    "Gemfile.lock",
    "README.md",
    "Rakefile",
    "VERSION",
    "doc/preview1.png",
    "doc/preview2.png",
    "doc/ulm_stats.rb",
    "doc/version",
    "fnordmetric.gemspec",
    "haml/app.haml",
    "haml/widget.haml",
    "lib/fnordmetric.rb",
    "lib/fnordmetric/app.rb",
    "lib/fnordmetric/average_metric.rb",
    "lib/fnordmetric/bars_widget.rb",
    "lib/fnordmetric/cache.rb",
    "lib/fnordmetric/combine_metric.rb",
    "lib/fnordmetric/context.rb",
    "lib/fnordmetric/count_metric.rb",
    "lib/fnordmetric/dashboard.rb",
    "lib/fnordmetric/event.rb",
    "lib/fnordmetric/funnel_widget.rb",
    "lib/fnordmetric/gauge.rb",
    "lib/fnordmetric/gauge_calculations.rb",
    "lib/fnordmetric/gauge_modifiers.rb",
    "lib/fnordmetric/inbound_stream.rb",
    "lib/fnordmetric/logger.rb",
    "lib/fnordmetric/metric.rb",
    "lib/fnordmetric/metric_api.rb",
    "lib/fnordmetric/namespace.rb",
    "lib/fnordmetric/numbers_widget.rb",
    "lib/fnordmetric/pie_widget.rb",
    "lib/fnordmetric/report.rb",
    "lib/fnordmetric/session.rb",
    "lib/fnordmetric/standalone.rb",
    "lib/fnordmetric/sum_metric.rb",
    "lib/fnordmetric/timeline_widget.rb",
    "lib/fnordmetric/toplist_widget.rb",
    "lib/fnordmetric/widget.rb",
    "lib/fnordmetric/worker.rb",
    "pub/fnordmetric.css",
    "pub/fnordmetric.js",
    "pub/loader.gif",
    "pub/sprite.png",
    "pub/vendor/highcharts.js",
    "pub/vendor/jquery-1.6.1.min.js",
    "spec/app_spec.rb",
    "spec/context_spec.rb",
    "spec/dashboard_spec.rb",
    "spec/event_spec.rb",
    "spec/gauge_modifiers_spec.rb",
    "spec/gauge_spec.rb",
    "spec/namespace_spec.rb",
    "spec/session_spec.rb",
    "spec/spec_helper.rb",
    "spec/widget_spec.rb",
    "spec/worker_spec.rb"
  ]
  s.homepage = "http://github.com/paulasmuth/fnordmetric"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.10"
  s.summary = "FnordMetric is a Ruby Event-Tracking gem on steroids"
  s.test_files = [
    "spec/app_spec.rb",
    "spec/context_spec.rb",
    "spec/dashboard_spec.rb",
    "spec/event_spec.rb",
    "spec/gauge_modifiers_spec.rb",
    "spec/gauge_spec.rb",
    "spec/namespace_spec.rb",
    "spec/session_spec.rb",
    "spec/spec_helper.rb",
    "spec/widget_spec.rb",
    "spec/worker_spec.rb"
  ]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<bson_ext>, [">= 1.4.0"])
      s.add_runtime_dependency(%q<sinatra>, [">= 1.2.6"])
      s.add_runtime_dependency(%q<redis>, [">= 2.2.2"])
      s.add_runtime_dependency(%q<eventmachine>, [">= 0"])
      s.add_runtime_dependency(%q<em-hiredis>, [">= 0"])
      s.add_runtime_dependency(%q<json>, [">= 0"])
      s.add_runtime_dependency(%q<i18n>, [">= 0"])
      s.add_runtime_dependency(%q<haml>, [">= 0"])
      s.add_runtime_dependency(%q<rack>, [">= 0"])
      s.add_runtime_dependency(%q<rack-test>, [">= 0"])
      s.add_runtime_dependency(%q<yajl-ruby>, [">= 0"])
      s.add_runtime_dependency(%q<thin>, [">= 0"])
      s.add_runtime_dependency(%q<activesupport>, [">= 0"])
      s.add_development_dependency(%q<delorean>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.6.0"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.2"])
    else
      s.add_dependency(%q<bson_ext>, [">= 1.4.0"])
      s.add_dependency(%q<sinatra>, [">= 1.2.6"])
      s.add_dependency(%q<redis>, [">= 2.2.2"])
      s.add_dependency(%q<eventmachine>, [">= 0"])
      s.add_dependency(%q<em-hiredis>, [">= 0"])
      s.add_dependency(%q<json>, [">= 0"])
      s.add_dependency(%q<i18n>, [">= 0"])
      s.add_dependency(%q<haml>, [">= 0"])
      s.add_dependency(%q<rack>, [">= 0"])
      s.add_dependency(%q<rack-test>, [">= 0"])
      s.add_dependency(%q<yajl-ruby>, [">= 0"])
      s.add_dependency(%q<thin>, [">= 0"])
      s.add_dependency(%q<activesupport>, [">= 0"])
      s.add_dependency(%q<delorean>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 2.6.0"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
    end
  else
    s.add_dependency(%q<bson_ext>, [">= 1.4.0"])
    s.add_dependency(%q<sinatra>, [">= 1.2.6"])
    s.add_dependency(%q<redis>, [">= 2.2.2"])
    s.add_dependency(%q<eventmachine>, [">= 0"])
    s.add_dependency(%q<em-hiredis>, [">= 0"])
    s.add_dependency(%q<json>, [">= 0"])
    s.add_dependency(%q<i18n>, [">= 0"])
    s.add_dependency(%q<haml>, [">= 0"])
    s.add_dependency(%q<rack>, [">= 0"])
    s.add_dependency(%q<rack-test>, [">= 0"])
    s.add_dependency(%q<yajl-ruby>, [">= 0"])
    s.add_dependency(%q<thin>, [">= 0"])
    s.add_dependency(%q<activesupport>, [">= 0"])
    s.add_dependency(%q<delorean>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 2.6.0"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
  end
end

