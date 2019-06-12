require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = 'https://atech-airlines-ui-staging.herokuapp.com'
    config.default_max_wait_time = 5
end