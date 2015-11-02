# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kgitlab/version'

Gem::Specification.new do |spec|
  spec.name          = "kgitlab"
  spec.version       = Kgitlab::VERSION
  spec.authors       = ["James T. Lee"]
  spec.email         = ["jtl@umd.edu"]
  spec.description   = %q{A GitLab system hook listener and associated tools for automatically managing the git user's .k5login file}
  spec.summary       = %q{Utilities for enabling Kerberos authentication for GitLab}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = Dir['Gemfile', 'Rakefile', '{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*', '*.gemspec', 'config.yaml.example', 'kgitlab.service.in']
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_dependency "thor"
  spec.add_dependency "json"
  spec.add_dependency "gitlab"
end
