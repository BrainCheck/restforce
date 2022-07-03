# frozen_string_literal: true

# -*- encoding: utf-8 -*-
require File.expand_path('../lib/restforce/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Eric J. Holmes", "Tim Rogers"]
  gem.email         = ["eric@ejholmes.net", "tim@gocardless.com"]
  gem.description   = %q{A lightweight ruby client for the Salesforce REST API.}
  gem.summary       = %q{A lightweight ruby client for the Salesforce REST API.}
  gem.homepage      = "http://restforce.org/"
  gem.license       = "MIT"

  #gem.files         = `git ls-files`.split($\)
  gem.files         = %w[.gitignore .rubocop.yml .travis.yml .rubocop_todo.yml CHANGELOG.md CODE_OF_CONDUCT.md CONTRIBUTING.md Gemfile Gemfile.travis Guardfile LICENSE README.md Rakefile restforce.gemspec]

  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "restforce"
  gem.require_paths = ["lib"]
  gem.version       = Restforce::VERSION

  gem.required_ruby_version = '>= 2.0'

  gem.add_dependency 'faraday', ['>= 0.9.0', '<= 1.0']
  gem.add_dependency 'faraday_middleware', ['>= 0.8.8', '<= 1.0']

  gem.add_dependency 'json', '>= 1.7.5'

  gem.add_dependency 'hashie', ['>= 1.2.0', '< 4.0']

  gem.add_dependency 'jwt', ['>= 1.5.6']

  gem.add_development_dependency 'rspec', '~> 2.14.0'
  gem.add_development_dependency 'webmock', '~> 1.13.0'
  gem.add_development_dependency 'simplecov', '~> 0.7.1'
  gem.add_development_dependency 'rubocop', '~> 0.31.0'
  gem.add_development_dependency 'faye' unless RUBY_PLATFORM == 'java'
end
