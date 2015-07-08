source 'https://rubygems.org'

gem 'rails', '4.2.1'
gem 'sqlite3'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'pry'
gem 'byebug'

group :development, :test do
  gem 'green_onion', git: 'https://github.com/jehanzebkhan/green_onion.git', branch: 'ruby-2.2.1-upgrade'
  gem 'capybara-screenshot'
  gem 'rspec-rails'
  gem 'capybara'
  gem "capybara-webkit"
  gem 'rainbow'
end

group :test do
  gem 'cucumber-rails', require: false
  # database_cleaner is not required, but highly recommended
  gem 'database_cleaner'
  gem 'factory_girl'
  gem 'selenium-webdriver', "~> 2.45.0"
end

