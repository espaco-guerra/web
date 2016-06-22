# encoding: UTF-8
Konacha.configure do |config|
  Capybara.register_driver :selenium_chrome do |app|
    Capybara::Selenium::Driver.new(app, browser: :chrome)
  end
  Capybara.register_driver :selenium_marionette do |app|
    Capybara::Selenium::Driver.new(app, browser: :firefox, marionette: true)
  end
  config.driver = :selenium_chrome
end if defined?(Konacha)
