# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)
require 'slack-ruby-danger/version'

Gem::Specification.new do |s|
  s.name = 'slack-ruby-danger'
  s.version = SlackRubyDanger::VERSION
  s.required_ruby_version = '>= 2.5'
  s.authors = ['dblock']
  s.email = ['dblock@dblock.org']
  s.homepage = 'https://github.com/slack-ruby/danger'
  s.summary = 'Danger.systems conventions for slack-ruby projects.'
  s.description = 'Packages a Dangerfile to be used with Danger for projects within the slack-ruby community.'

  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ['lib']

  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
  s.add_runtime_dependency 'danger', '~> 8.0'
  s.add_runtime_dependency 'danger-changelog', '~> 0.6'
  s.add_runtime_dependency 'danger-toc', '~> 0.2'
end
