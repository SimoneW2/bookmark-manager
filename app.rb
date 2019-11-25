require 'sinatra/base'

class BookmarkManager < Sinatra::Base
  get '/testing' do
    'Hello world'
  end

  run! if app_file == $0
end
