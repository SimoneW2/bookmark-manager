require 'sinatra/base'

class BookmarkManager < Sinatra::Base
  get '/testing' do
    'Hello world'
  end

  get '/bookmarks' do
    erb :bookmark_list
  end

  run! if app_file == $0
end
