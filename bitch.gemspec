# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bitch/version'

Gem::Specification.new do |spec|
  spec.name          = "bitch"
  spec.version       = Bitch::VERSION
  spec.authors       = ["Jackson Gariety", "Colby Aley"]
  spec.email         = ["personal@jacksongariety.com", "colby@aley.me"]
  spec.description   = "A logger for Ruby that uses OS X notifications."
  spec.summary       = "Gets in yo face when you write ruby."
  spec.homepage      = "http://github.com/JacksonGariety/bitch"
  spec.license       = "Apache"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "terminal-notifier"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
