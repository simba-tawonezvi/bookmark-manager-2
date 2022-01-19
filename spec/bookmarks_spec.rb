require 'bookmarks'

describe Bookmark do
  it 'lists all the bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.google.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.outlook.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.facebook.com');")

    bookmarks = Bookmark.all

    expect(bookmarks).to include "http://www.google.com"
    expect(bookmarks).to include "http://www.outlook.com"
    expect(bookmarks).to include "http://www.facebook.com"
  end
end