source 'http://rubygems.org'

gem 'rails', '~> 3.2.0'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.0'
  gem 'coffee-rails', '~> 3.2.0'
  gem 'uglifier',     '>= 1.0.3'
end

gem 'jquery-rails'

gem 'mongoid'
gem 'bson_ext'
gem 'rails3-generators'

gem 'haml'
gem 'haml-rails'
gem 'aws-s3'
gem 'mongoid-paperclip', require: 'mongoid_paperclip'
gem 'dynamic_form'

group :production do
  gem 'thin'
end

group :development do
  gem 'heroku'
  gem 'taps'

  gem 'unicorn'
  gem 'hpricot'
end

group :test, :development do
  gem 'capistrano'
  gem 'capistrano_colors'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'email_spec' 
  gem 'factory_girl_rails'
  gem 'fakeweb'
  gem 'launchy'
  gem 'mongoid-rspec'
  gem 'pry-rails'
  gem 'pry-nav'
  gem 'rspec-rails'
  gem 'ruby-debug19'
  gem 'timecop'
  gem 'vcr'

  # Pretty printed test output
  gem 'turn', require: false

  gem 'simplecov',      require: false
  gem 'simplecov-rcov', require: false
end

