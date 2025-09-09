source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gem 'bigdecimal'
gem 'fiddle'
gem 'logger'
gem 'mutex_m'
gem 'ostruct'
gem 'pry'

gem 'nio4r', '~> 2.7'

ruby '3.3.5'
gem 'puma', '~> 6.0'
gem 'rails', '~> 7.1.0'
gem 'sqlite3', '~> 1.6.0'
gem 'webrick'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

gem 'rack-cors'

group :development, :test do
  gem 'byebug', platforms: %i[mri windows]
  gem 'capybara'
  gem 'rspec-rails', '~> 6.0.0'
end

group :development do
  gem 'listen', '~> 3.3'
  gem 'rubocop'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[windows jruby]

group :test do
  gem 'rspec-json_expectations'
  gem 'shoulda-matchers', '~> 4.0'
end
