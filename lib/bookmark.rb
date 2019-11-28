require 'pg'
class Bookmark
  def self.all
  #   [
  #     "http://www.makersacademy.com",
  #     "http://www.destroyallsoftware.com",
  #     "http://www.google.com"
  #    ]
  # connection = PG.connect(dbname: 'bookmark_manager') #connect to the database
  # result = connection.exec('SELECT * FROM bookmarks')

  if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end

    result = connection.exec("SELECT * FROM bookmarks")
    result.map { |bookmark| bookmark['url'] }
  end
end
