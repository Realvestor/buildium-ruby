$:.unshift File.expand_path("../lib", File.dirname(__FILE__))

require "simplecov"
require "coveralls"

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
SimpleCov.start

require "buildium"
require "minitest/spec"
require "minitest/pride"
require "minitest/autorun"

API_KEY = ENV['API_KEY']
