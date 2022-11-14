source 'https://rubygems.org'
ruby '2.6.6'

gem 'pg'
gem 'puma', '~> 5'
gem 'rails', '5.2'

# Auth
gem 'devise'
gem 'omniauth-facebook', '~> 3.0'
gem 'omniauth-google-oauth2', '~> 0.3.1'
gem 'omniauth-twitter', '~> 1.2'

# Front-end
gem 'autoprefixer-rails', '~> 6.3'
gem 'bootstrap-sass', '~> 3.3.6'
gem 'font-awesome-sass', '~> 4.5'
gem 'react-rails', '~> 1.10'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
gem 'jbuilder', '~> 2.0'
gem 'jquery-rails'
gem 'jquery-ui-rails', '~> 5.0'
gem 'turbolinks', '~> 2.5'

gem 'friendly_id', '~> 5.1'

# Image upload
gem 'carrierwave', '0.10.0'
gem 'fog'
gem 'mini_magick', '3.8.0'
gem 'net-ssh'
gem 'sdoc', '~> 0.4.0', group: :doc

# Load will_paginate before elasticsearch gems.
gem 'will_paginate', '~> 3.1'

# Elasticsearch
gem 'elasticsearch-model'
gem 'elasticsearch-rails'

# Background Job
gem 'sidekiq', '~> 4.0'
gem 'sinatra', require: false
gem 'slim'
# gem 'sidetiq', '~> 0.7.0'

gem 'nokogiri', '~> 1.6'

# Caching
gem 'dalli', '~> 2.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  gem 'awesome_print', '~> 1.6'
  gem 'bundler-audit'
  gem 'byebug'
  gem 'pry-rails'
  gem 'rspec-rails'
  gem 'rubocop'
  gem 'dotenv-rails'
end

group :development do
  gem 'rails_best_practices', '~> 1.15'
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  # gem 'spring'
  gem 'guard-rspec', require: false
  # gem 'spring-commands-rspec', '~> 1.0'
  gem 'annotate'
  gem 'bullet', '~> 5.0'
  gem 'rack-mini-profiler', '~> 0.9.8', require: false
  # gem 'quiet_assets', '~> 1.1'
end

group :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'factory_girl_rails', '~> 4.5.0'
  gem 'faker', '~> 1.6.1'
  gem 'launchy', '~> 2.4.3'
  gem 'phantomjs', require: 'phantomjs/poltergeist'
  gem 'poltergeist'
  gem 'rails-controller-testing'
  gem 'selenium-webdriver', '~> 2.48.1'
end

group :production do
  gem 'bonsai-elasticsearch-rails'
  gem 'rails_12factor', '0.0.2'
end
