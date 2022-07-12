source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.6'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.8'
# Use mysql as the database for Active Record
gem 'mysql2', '>= 0.4.4', '< 0.6.0'
# Use Puma as the app server.
gem 'puma', '~> 4.3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  #DEPLOYMENT
  gem 'capistrano', '~> 3.10', require: false
  gem 'capistrano-rbenv', '~> 2.2'
  gem 'capistrano-rails', '~> 1.4', require: false
  gem 'capistrano-bundler', '>= 1.1.0'
  gem 'capistrano3-puma', github: "seuros/capistrano-puma"
  gem 'ed25519', '>= 1.2', '< 2.0'
  gem 'bcrypt_pbkdf', '>= 1.0', '< 2.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'devise'
#It lets you create pretty URLs and work with human-friendly strings as if they were numeric ids.
gem 'friendly_id', '~> 5.4', '>= 5.4.2'


# The basics
# for responsive <div>‘s, i.e., jumbotrons that automatically scale according to various page widths
gem 'bootstrap-sass', '~> 3.3.4'

# for icons like fa-fa-bars and checkmarks
gem 'font-awesome-sass', '~> 4.3.0'

# for additional JavaScript effects such as ToggleClass
gem 'jquery-ui-rails'

# for standard social icons (think Facebook and Twitter icons)
gem 'bootstrap-social-rails'

#
gem "jquery"

#railsadmin
gem 'rails_admin', '~> 2.0'

#ACCESS GRANTED

gem 'access-granted', '~> 1.3', '>= 1.3.3'

#CANCANCAN
gem 'cancancan', '~> 3.4'

#attachment
gem "image_processing", ">= 1.2"

#postgres
gem 'pg', '~> 1.4', '>= 1.4.1'

#FAKER 
gem 'faker', '~> 2.21'

#POPULATOR
gem 'populator', '~> 1.0'
#CHARTS
gem 'highcharts-rails', '~> 6.0', '>= 6.0.3'
gem 'lazy_high_charts', '~> 1.6', '>= 1.6.1'
gem 'rails_admin_charts', '~> 0.0.12'

#FIGARO
gem 'figaro'

#TWILIO RUBY
gem 'twilio-ruby'

#HTTP
gem "http"
