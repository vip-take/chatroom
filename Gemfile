source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
gem 'mysql2', '>= 0.3.18', '< 0.5'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'jbuilder', '~> 2.5'
gem 'haml-rails', '~> 0.9'
gem 'font-awesome-rails'
gem 'devise'
gem 'rails-i18n', '~> 5.0.0'

gem 'carrierwave', '~> 1.0'
gem "mini_magick"


group :development, :test do
  gem 'byebug', platform: :mri
  gem 'pry-rails'

  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'capybara'
  gem "database_cleaner"
  gem "launchy"
  gem "selenium-webdriver"
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'bullet'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
