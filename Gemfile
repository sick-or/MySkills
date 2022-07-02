# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.2'

gem 'annotate'
gem 'bootsnap', '>= 1.4.4', require: false
gem 'figaro'
gem 'jbuilder', '~> 2.7'
gem 'pg'
gem 'puma', '~> 5.0'
gem 'rails', '~> 6.1.5'
gem 'sass-rails', '>= 6'
gem 'turbolinks', '~> 5'
gem 'webpacker', '~> 5.0'

group :test do
  gem 'rspec'
  gem 'rspec-rails'
end

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'faker'
  gem 'rubocop'
  gem 'rubocop-faker'
end

group :development do
  gem 'listen', '~> 3.3'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'spring'
  gem 'web-console', '>= 4.1.0'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
