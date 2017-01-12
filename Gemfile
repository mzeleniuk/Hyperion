source 'https://rubygems.org'
ruby '2.3.1'

gem 'bundler'
gem 'rake'
gem 'hanami',       '~> 0.9'
gem 'hanami-model', '~> 0.7'

gem 'pg'

# Provides jQuery and the jQuery-ujs driver for Hanami application
gem 'jquery-hanami', '~> 0.1.0'

# Bootstrap wrapper for Hanami framework
gem 'hanami-bootstrap', '~> 0.3.0'

group :development do
  # Code reloading
  # See: http://hanamirb.org/guides/projects/code-reloading
  gem 'shotgun'
end

group :test, :development do
  gem 'dotenv', '~> 2.0'
end

group :test do
  gem 'minitest'
  gem 'capybara'

  # A code coverage analysis tool for Ruby
  gem 'simplecov', '~> 0.12.0', require: false
end

group :production do
  # gem 'puma'
end
