# frozen_string_literal: true
source 'https://rubygems.org'

ruby '2.6.6'

gem 'puma', '~> 4.1'

gem 'rails', '~> 6.0.3', '>= 6.0.3.2'
gem 'sqlite3'

gem 'sass-rails', '>= 6'
gem 'turbolinks', '~> 5'
gem 'webpacker', '~> 4.0'

gem 'bootsnap', '>= 1.4.2', require: false
gem 'jbuilder', '~> 2.7'

gem 'devise', '~> 4.7', '>= 4.7.2'
gem 'pundit', '~> 2.1'

group :development do
  gem 'listen', '~> 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'capybara'
  gem 'capybara-screenshot'
  gem 'database_cleaner'
  gem 'factory_bot_rails'
  gem 'rails-controller-testing'
  gem 'rspec-rails', '~> 4.0', '>= 4.0.1'
  gem 'shoulda-matchers', '~> 4.0'
  gem 'webdrivers'
end

group :development, :test do
  gem 'boost-styles', git: 'https://github.com/boost/boost-styles.git', require: false
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'pry-rails'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
