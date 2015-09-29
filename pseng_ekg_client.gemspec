# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pseng_ekg/version'

Gem::Specification.new do |spec|
  spec.name          = "pseng_ekg_client"
  spec.version       = PsengEkg::VERSION
  spec.authors       = ["Cody Tanner"]
  spec.email         = ["ctanner@instructure.com"]

  spec.summary       = %q{Post data to allow monitoring of processes}
  spec.description   = %q{This gem is used to push status updates to long running processes for Instructure Professional Services}
  spec.homepage      = "https://github.com/CerebralStorm/pseng_ekg_client"

  spec.files         = %w[Rakefile pseng_ekg_client.gemspec]
  spec.files         += Dir.glob("lib/**/*.rb")
  spec.test_files    = Dir.glob("spec/**/*")

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", '~> 3.0'
  spec.add_dependency 'httparty', '0.13.1'
  spec.add_dependency 'httmultiparty', '0.3.10'
end
