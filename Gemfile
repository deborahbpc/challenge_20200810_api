source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.6'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.3', '>= 6.0.3.3'
# Use mysql as the database for Active Record
gem 'mysql2', '~> 0.5.3'
# Use Puma as the app server
gem 'puma', '~> 4.1'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 4.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

# A simple HTTP and REST client for Ruby
gem 'rest-client', '~> 2.1'
# Used to easily generate fake data
gem 'faker', :git => 'https://github.com/faker-ruby/faker.git', :branch => 'master'
# Client library for easily using the Cloudinary service
gem 'cloudinary', '~> 1.18.0'
# Parse CSS and add vendor prefixes to CSS rules using values from the Can I Use website
gem 'autoprefixer-rails'
# Font-Awesome SASS gem for use in Ruby projects
gem 'font-awesome-sass'
# Forms made easy!
gem 'simple_form'
# Flexible authentication solution for Rails with Warden
gem 'devise'
# Use render in your Rails controllers and handle the response with Turbolinks.
gem 'turbolinks_render'
# Object oriented authorization for Rails applications
gem 'pundit'
# Adding API key
gem 'simple_token_authentication'
# Bootstrap 4 ruby gem for Ruby on Rails
gem 'bootstrap', '~> 5.0.0.alpha1'
gem 'jquery-rails'

# Support for Cross-Origin Resource Sharing (CORS) for Rack compatible web applications
gem 'rack-cors'

group :development, :test do
  # Used to load environment variables from .env into ENV in development.
  gem 'dotenv-rails'
  gem 'pry-byebug'
  gem 'pry-rails'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
