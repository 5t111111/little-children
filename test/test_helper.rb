$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'little-children'
require 'minitest/autorun'
require "minitest/reporters"
require 'minitest/power_assert'

# minitest-reporters settings
Minitest::Reporters.use!(
  Minitest::Reporters::SpecReporter.new,
  ENV,
  Minitest.backtrace_filter
)
