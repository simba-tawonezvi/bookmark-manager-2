-- create a directory mkdir bookmark_manager
-- create a README.md
-- create a gemfile : touch Gemfile
gemfile:
source 'https://rubygems.org' # source for installation
gem 'rspec'
gem 'sinatra' # webserver with localhost4567
gem 'capybara' # feature tests
gem 'selenium-webdriver'
gem 'webrick' # for rackup 1
gem 'sinatra-contrib' # for rackup 2
gem 'launchy' #save and reload’

--bundle install

--brew install tree # to see structure of files

-- rspec --init  # initialize rspec

------In spec_helper.rb
# at the top of spec/spec_helper.rb

# Set the environment to "test"
ENV['RACK_ENV'] = 'test'

# Bring in the contents of the `app.rb` file. The below is equivalent to: require_relative '../app.rb'
require File.join(File.dirname(__FILE__), '..', 'app.rb')

# Require all the testing gems
require 'capybara'
require 'capybara/rspec'
require 'rspec'

# Tell Capybara to talk to BookmarkManager
Capybara.app = BookmarkManager

### the rest of the file ###
-------

-- git init and create GitHub repositorty
steps
echo "# new" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin (example=>"https://github.com/JennyEMorrison/new.git")
git push -u origin main

--create new folders in route
mkdir lib # for classes
mkdir public # for CSS content
mkdir views # for .erb files, html rendering

mkdir spec/features # for feature tests

--create config file for rackup
touch config.ru

content of the file:  # main controller file app.rb
require_relative './app' # main controller file app.rb
run RockPaperScissors # place here the class used inside app.rb instead of RockPaperScissors

-- create app.rb file
touch app.rb
copy content to file
require 'sinatra/base' #start webserver
require 'sinatra/reloader' #start auto reload
require_relative './lib/bookmarks' # place own classes here
class BookmarkManager < Sinatra::Base # rename RockPaperScissorsBookmarkManager to a class you use
  enable :sessions # make sessions hash available
  register Sinatra::Reloader # some kind of reloading
  get '/' do # root route
    erb :index
  end
  run! if app_file == $0
end

-- touch ./views/index.erb

--rackup # test the setup and web server

-- test pry

pry
require 'capybara'
require 'selenium-webdriver'
require 'capybara/dsl'

include Capybara::DSL
Capybara.default_driver = :selenium

visit "http://localhost:9292"

-- setup DB structure
mkdir db
mkdir ./db/migrations
touch database_connection_setup.rb

<ul> = unordered list (bullet points)
<ol> = ordered list (numbered)

postgres  in terminal - psql postgres
CREATE DATABASE "jennmorrison";

after created just use - psql

CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));