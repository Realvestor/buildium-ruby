# coding: utf-8
$:.unshift(File.join(File.dirname(__FILE__), 'lib'))

require "buildium/version"

Gem::Specification.new do |spec|
  spec.name          = "buildium"
  spec.version       = Buildium::VERSION
  spec.authors       = ["James Dullaghan"]
  spec.email         = ["support@realvestor.io"]
  spec.description   = %q{Buildium API Ruby wrapper}
  spec.summary       = %q{Ruby wrapper for Buildium API with ActiveRecord-style syntax}
  spec.homepage      = "https://github.com/Realvestor/buildium-ruby"
  spec.license       = "Propietary"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rest-client", ">= 2.0.1", "< 3.0"

  spec.add_development_dependency "rake", "~> 10.4.2"
  spec.add_development_dependency "minitest", "~> 5.6.1"
  spec.add_development_dependency "webmock", "~> 1.2"
  spec.add_development_dependency "coveralls", "~> 0.8.13"
  spec.add_development_dependency "simplecov", "~> 0.11.0"
end
