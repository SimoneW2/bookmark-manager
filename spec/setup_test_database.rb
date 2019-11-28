require 'pg'

def setup_test_database #Gets method from bookmark.rb
p "Setting up test database..."

connection = PG.connect(dbname: 'bookmark_manager_test')

# Clear the bookmarks table
connection.exec("TRUNCATE bookmarks;")#Empties only part of the database not all li
end
