require 'capybara-screenshot/rspec'

Capybara::Screenshot.autosave_on_failure = true
Capybara.asset_host = 'http://localhost:3000'

Capybara::Screenshot.webkit_options = { width: 1440, height: 900 }
Capybara::Screenshot.register_filename_prefix_formatter(:rspec) do |example|
  "screenshot_#{example.description.tr(' ', '-').gsub(%r{^.*\/spec\/}, '')}"
end
Capybara::Screenshot.prune_strategy = :keep_last_run
Capybara::Screenshot.register_driver(:headless_chrome) do |driver, path|
  driver.browser.save_screenshot(path)
end
