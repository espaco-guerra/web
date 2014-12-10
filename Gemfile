#encoding: UTF-8
source 'https://rubygems.org'
ruby '2.1.4'

gem 'rails', '4.1.8'
gem 'bundler'
gem 'sqlite3'
gem 'jquery-rails'
gem 'newrelic_rpm'
gem 'haml'
gem 'sass-rails'
gem 'uglifier'
gem 'coffee-rails'
gem 'turbolinks'
gem 'jbuilder'
gem 'sdoc', group: :doc
gem 'bcrypt'
gem 'unicorn'
gem 'bower-rails'

group :development do
  gem 'capistrano-rails'
  gem 'spring'
end

group :development, :test do
 gem 'rake'
 gem 'spring-commands-rspec'
 gem 'rspec'
 gem 'rspec-rails'
 gem 'rspec-collection_matchers'
 gem 'guard'
 gem 'guard-rspec'
 gem 'konacha'
 gem 'guard-konacha'
 gem 'selenium-webdriver'
 gem 'foreman'
 gem 'byebug'
 gem 'pry'
 gem 'rb-fsevent' if `uname` =~ /Darwin/
 gem 'terminal-notifier-guard' if `uname` =~ /Darwin/
 gem 'libnotify' if `uname` =~ /Linux/
end

group :test do
  gem 'codeclimate-test-reporter', require: nil
end
