source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.7.1"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.0.2", ">= 7.0.2.3"

# Use postgresql as the database for Active Record
gem 'pg', '~> 1.3', '>= 1.3.4', group: :production
# heroku deploy
gem 'rails_12factor', group: :production
# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 5.0"

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
# gem "jbuilder"

# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 4.0"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
gem "bcrypt", "~> 3.1.7"
gem 'dotenv-rails', '~> 2.7', '>= 2.7.6'
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"
gem 'fast_jsonapi', '~> 1.5'
gem 'jwt', '~> 2.3'
# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem "rack-cors"
gem 'rubocop', '~> 1.26'
gem 'rubocop-rspec', '~> 2.9'

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem 'database_cleaner', '~> 2.0', '>= 2.0.1'
  gem 'factory_bot_rails', '~> 6.2'
  gem 'hirb', '~> 0.7.3'
  gem 'rdoc', '~> 6.4'
  gem 'rspec-rails', '~> 5.1', '>= 5.1.1'
  gem 'shoulda-matchers', '~> 5.1'
end

group :development do
  gem 'listen', '~> 3.7', '>= 3.7.1'
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  gem "spring"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
