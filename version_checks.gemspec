# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'version_checks/version'

Gem::Specification.new do |spec|
  spec.name          = "version_checks"
  spec.version       = VersionChecks::VERSION
  spec.authors       = ["Frank West"]
  spec.email         = ["frank.west.iii@gmail.com"]

  spec.summary       = %q{Gem for testing bundler dependency management}
  spec.description   = %q{Gem for testing bundler dependency management}
  spec.homepage      = "https://www.frankwestiii.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
