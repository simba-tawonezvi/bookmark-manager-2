-- create a directory mkdir bookmark_manager
-- create a README.md
-- create a gemfile : touch Gemfile
gemfile:
source ‘https://rubygems.org’ # source for installation
gem ‘rspec’
gem ‘sinatra’ # webserver with localhost4567
gem ‘capybara’ # feature tests
gem ‘selenium-webdriver’
gem ‘webrick’ # for rackup 1
gem ‘sinatra-contrib’ # for rackup 2
gem ‘launchy’ #save and reload’

--bundle install

--brew install tree # to see structure of files

-- rspec --init  # initialize rspec

-- pry after installation 

pry
require ‘capybara’
require ‘selenium-webdriver’
require ‘capybara/dsl’
include Capybara::DSL
Capybara.default_driver = :selenium

-- Git init and create 