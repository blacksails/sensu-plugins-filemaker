# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sensu-plugins-filemaker/version'

Gem::Specification.new do |spec|
  spec.name          = "sensu-plugins-filemaker"
  spec.version       = SensuPluginsFilemaker::VERSION
  spec.authors       = ["Benjamin Nørgaard"]
  spec.email         = ["b@noergaard.dk"]

  spec.summary       = %q{Sensu plugin for filemaker}
  spec.description   = %q{Sensu plugin for filemaker}
  spec.homepage      = "https://github.com/blacksails/sensu-plugins-filemaker"
  spec.license       = "MIT"

  spec.files         = Dir.glob('{bin,lib}/**/*') + %w(LICENSE README.md)
  spec.executables   = Dir.glob('bin/**/*.rb').map { |file| File.basename(file) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "sensu-plugin", "~> 1.4"

  spec.add_development_dependency "bundler", "~> 1.14"
end
