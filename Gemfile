source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

gem 'bootsnap', '>= 1.4.2', require: false
gem 'devise', '~> 4.7', '>= 4.7.2'
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.5'
gem 'foundation-rails', '~> 6.6', '>= 6.6.2.0'
gem 'haml-rails', '~> 2.0', '>= 2.0.1'
gem 'jbuilder', '~> 2.7'
gem 'mysql2', '~> 0.5.3'
gem 'puma', '~> 4.1'
gem 'pundit', '~> 2.1'
gem 'rails', '~> 6.0.3', '>= 6.0.3.2'
gem 'sass-rails', '>= 6'
gem 'turbolinks', '~> 5'
gem 'webpacker', '~> 4.0'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'listen', '~> 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'  
end

group :test do
  gem 'capybara', '~> 3.29'
  gem 'capybara-screenshot'
  gem 'database_cleaner'
  gem 'factory_bot_rails'
  gem 'rails-controller-testing'
  gem 'rspec-retry'
  gem 'rubocop-faker', '~> 0.2.0'
  gem 'selenium-webdriver', '~> 3.142', '>= 3.142.4'
  gem 'shoulda-matchers'
  gem 'webdrivers', '~> 4.0'
end

group :development, :test do
  gem 'boost-styles', git: 'https://github.com/boost/boost-styles.git', require: false
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'faker'
  gem 'pry-rails'
  gem 'rspec-rails', '~> 4.0', '>= 4.0.1'
  gem 'rubocop', '~> 0.68', require: false
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
