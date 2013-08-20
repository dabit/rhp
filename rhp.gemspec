# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rhp/version'

Gem::Specification.new do |spec|
  spec.name          = "rhp"
  spec.version       = Rhp::VERSION
  spec.authors       = ["David Padilla"]
  spec.email         = ["david@crowdint.com"]
  spec.description   = spec.summary = %q{Serve ERB files PHP style!}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
