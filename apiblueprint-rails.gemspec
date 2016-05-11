# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'apiblueprint/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "apiblueprint-rails"
  spec.version       = Apiblueprint::Rails::VERSION
  spec.authors       = ["Naoyoshi Aikawa"]
  spec.email         = ["nao@wantedly.com", "dev@wantedly.com"]

  spec.summary       = "API Blueprint generator for Rails"
  spec.description   = "apiblueprint-rails creates API Blueprint boilerplate when generating scaffold by rails"
  spec.homepage      = "https://github.com/wantedly/apiblueprint-rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "railties", "~> 3.0"

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
