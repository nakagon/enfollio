source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.7'
# Use mysql as the database for Active Record
# gem 'mysql2', '>= 0.3.18', '< 0.6.0'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
gem 'jquery-turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  gem 'rspec-rails'
  gem 'rspec-its'
  gem 'pry'
  gem 'pry-rails'
  gem 'pry-byebug'
  gem 'pry-rescue'

end

group :test do
  gem 'shoulda-matchers'
  gem 'capybara'
  gem 'poltergeist'
  gem 'database_cleaner'
  gem 'launchy'
end


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'unicorn', '~> 4.8'
gem 'execjs'
gem 'active_hash'
gem 'friendly_id'
gem 'enum_help'


gem 'devise'
gem 'omniauth-twitter'
gem 'omniauth-google-oauth2'
gem 'omniauth-github'
gem 'devise-bootstrap-views'
gem 'awesome_print'
gem 'acts-as-taggable-on'
gem 'redcarpet'
gem 'github-markdown'
gem 'kaminari'
gem 'coderay'
gem 'coderay_bash'
gem 'dotenv-rails'
gem 'bootstrap-sass'
gem 'bootswatch-rails'
gem 'autoprefixer-rails'
gem 'compass-rails', github: 'Compass/compass-rails'
gem 'carrierwave'
gem 'google-analytics-rails'
gem 'nested_form_fields'
gem "font-awesome-rails"

require 'erb'
require 'yaml'
database_file = File.join(File.dirname(__FILE__), "config/database.yml")
if File.exist?(database_file)
  database_config = YAML::load(ERB.new(IO.read(database_file)).result)
  adapters = database_config.values.map {|c| c['adapter']}.compact.uniq
  if adapters.any?
    adapters.each do |adapter|
      case adapter
      when 'mysql2'
        gem "mysql2", '>= 0.3.18', '< 0.6.0'
      when /postgresql/
        gem "pg", '~> 0.17'
      when /sqlite3/
        gem "sqlite3", '~> 1.3'
      else
        warn("Unknown database adapter `#{adapter}` found in config/database.yml")
      end
    end
  else
    warn("No adapter found in config/database.yml, please configure it first")
  end
else
  warn("Please configure your config/database.yml first")
end