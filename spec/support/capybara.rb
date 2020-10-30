require 'selenium/webdriver'
require 'capybara'
require 'capybara/rspec'

Capybara.register_driver :headless_chrome do |app|

  options = Selenium::WebDriver::Chrome::Options.new(
    args: %w[headless disable-gpu no-sandbox window-size=1440,900]
  )
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end

Capybara.javascript_driver = :headless_chrome
