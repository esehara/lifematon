# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lifematon/version'

Gem::Specification.new do |spec|
  spec.name          = "lifematon"
  spec.version       = Lifematon::VERSION
  spec.authors       = ["esehara shigeo"]
  spec.email         = ["esehara@gmail.com"]
  spec.summary       = %q{Simple encoding for your life}
  spec.description   = %q{Simple encoding for your life}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
