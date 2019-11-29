require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  get '/testing' do
    'Hello world'
  end

  get '/bookmarks' do
    # @bookmarks = [ #Convert to an instance variable so erb can access info
    #         "http://www.makersacademy.com",
    #         "http://www.destroyallsoftware.com",
    #         "http://www.google.com"
    #        ]
    #     bookmarks.join
    p ENV
    @bookmarks = Bookmark.all #moved the code above to lib folder  and gave it a class Bookmark.
    erb :'bookmarks/index' #Displays here
  end

  get '/bookmarks/new' do
  erb :"bookmarks/new"
end

post '/bookmarks' do
  #p "Form data submitted to the /bookmarks route!"
  #p params

  # Bookmark.create(url: params[:url])
  # redirect '/bookmarks'

  Bookmark.create(url: params['url'])
  redirect '/bookmarks'
end

  run! if app_file == $0
end
