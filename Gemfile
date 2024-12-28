source "https://rubygems.org"

ruby "3.2.2"

gem "rails", "~> 7.1.4"

gem 'pg'

gem "puma", ">= 5.0"


# gem "redis", ">= 4.0.1"

gem 'dotenv-rails'

gem "tzinfo-data", platforms: %i[ windows jruby ]

gem "bootsnap", require: false

gem 'active_model_serializers'

gem 'ransack'

group :development, :test do
  gem "debug", platforms: %i[ mri windows ]
  gem 'rspec-rails'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'database_cleaner-active_record'
end

group :development do
  gem 'rubocop', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false
end

