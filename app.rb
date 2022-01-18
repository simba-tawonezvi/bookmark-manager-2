require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/bookmarks'

class BookmarkManager < Sinatra::Base
  enable :sessions
  register Sinatra::Reloader
  
  get '/' do
    "hello"

  #  erb :index

  bookmark = Bookmarks.new
  end

  get '/bookmarks' do
    @bookmark = $bookmark.all
    erb :index
  end

  run! if app_file == $0

end