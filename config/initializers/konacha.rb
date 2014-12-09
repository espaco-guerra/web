#encoding: UTF-8
Konacha.configure do |config|
  config.driver = :selenium

  require 'headless'

  headless = Headless.new
  headless.start
end if defined?(Konacha)
