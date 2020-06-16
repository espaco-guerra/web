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
gem 'coffee-rails', '>= 5.0.0'
gem 'haml'
gem 'jbuilder', '>= 2.7.0'
gem 'jquery-rails', '>= 4.4.0'
gem 'newrelic_rpm'
gem 'rails', '~> 5.2', '>= 5.2.4.3'
gem 'sass-rails', '>= 6.0.0'
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
  gem 'spring', '>= 2.0.2'
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
  gem 'rspec-rails', '>= 4.0.1'
  gem 'rubocop'
  gem 'selenium-webdriver', '>= 3.11.0'
  gem 'spring-commands-rspec', '>= 1.0.4'
  gem 'sqlite3'
  gem 'terminal-notifier-guard', require: darwin_only('terminal-notifier-guard')
end

group :test do
  gem 'codeclimate-test-reporter', '~> 1.0.8'
  gem 'simplecov', '>= 0.13.0'
end
