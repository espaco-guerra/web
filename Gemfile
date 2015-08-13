# encoding: UTF-8
source 'https://rubygems.org'
ruby '2.2.2'

def linux_only(require_as)
  RbConfig::CONFIG['host_os'] =~ /linux/ ? require_as : false
end
# Mac OS X
def darwin_only(require_as)
  RbConfig::CONFIG['host_os'] =~ /darwin/ ? require_as : false
end

gem 'rails', '4.2.3'
gem 'bundler'
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

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

group :development do
  gem 'capistrano-rails'
  gem 'net-ssh', '2.10.1.rc1' # 2.10 is yanked
  gem 'spring'
end

group :development, :test do
  gem 'sqlite3'
  gem 'rake'
  gem 'spring-commands-rspec'
  gem 'rspec'
  gem 'rspec-rails'
  gem 'rspec-collection_matchers'
  gem 'guard'
  gem 'guard-rspec'
  gem 'konacha'
  gem 'guard-konacha-rails'
  gem 'selenium-webdriver'
  gem 'rubocop'
  gem 'guard-rubocop'
  gem 'foreman'
  gem 'byebug'
  gem 'pry'
  gem 'rb-fsevent', require: darwin_only('rb-fsevent')
  gem 'terminal-notifier-guard', require: darwin_only('terminal-notifier-guard')
  gem 'rb-inotify', require: linux_only('rb-inotify')
end

group :test do
  gem 'codeclimate-test-reporter', require: nil
end
