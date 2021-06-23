source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.1'
gem 'rails', '~> 6.1.3', '>= 6.1.3.2'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'redis', '~> 4.0'
gem 'bootsnap', '>= 1.4.4', require: false
gem 'rack-cors'

group :development, :test do
  gem 'pry'
  gem 'rspec-rails', '~> 5.0.0'
  gem 'database_cleaner-active_record'
  gem 'faker'
  gem 'shoulda-matchers'
  gem 'test-prof'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'listen', '~> 3.3'
  gem 'spring'
end

gem 'factory_bot'
gem 'devise'
gem 'devise-jwt'
gem 'action_policy-graphql'
gem 'dotenv-rails'
gem 'graphql', '<= 1.12.10'
gem 'recursive-open-struct'
gem 'search_object'
gem 'search_object_graphql'
gem 'fast_jsonapi'
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
