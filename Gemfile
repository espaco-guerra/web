# frozen_string_literal: true

source 'https://rubygems.org'
ruby '2.6.3'

def linux_only(require_as)
  RbConfig::CONFIG['host_os'] =~ /linux/ ? require_as : false
end

# Mac OS X
def darwin_only(require_as)
  RbConfig::CONFIG['host_os'] =~ /darwin/ ? require_as : false
end

gem 'bcrypt'
gem 'bower-rails'
gem 'bundler'
gem 'coffee-rails', '>= 4.2.2'
gem 'haml'
gem 'jbuilder'
gem 'jquery-rails', '>= 4.3.1'
gem 'newrelic_rpm'
gem 'rails', '~> 5.1', '>= 5.1.5'
gem 'sass-rails', '>= 5.0.7'
gem 'sdoc', group: :doc
gem 'turbolinks'
gem 'uglifier'
gem 'unicorn'

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

group :development do
  gem 'capistrano-rails'
  gem 'spring'
end

group :development, :test do
  gem 'brakeman', require: false
  gem 'byebug'
  gem 'foreman'
  gem 'guard'
  gem 'guard-rspec'
  gem 'guard-rubocop'
  gem 'pry'
  gem 'rake'
  gem 'rb-fsevent', require: darwin_only('rb-fsevent')
  gem 'rb-inotify', require: linux_only('rb-inotify')
  gem 'rspec'
  gem 'rspec-collection_matchers'
  gem 'rspec-rails', '>= 3.7.2'
  gem 'rubocop'
  gem 'selenium-webdriver'
  gem 'spring-commands-rspec'
  gem 'sqlite3'
  gem 'terminal-notifier-guard', require: darwin_only('terminal-notifier-guard')
end

group :test do
  gem 'codeclimate-test-reporter', '~> 1.0.0'
  gem 'simplecov'
end
