require 'bookmarks'

describe Bookmark do
  it 'lists all the bookmarks' do
    bookmarks = Bookmark.all
    expect(bookmarks).to include "http://www.google.com"
    expect(bookmarks).to include "http://www.outlook.com"
    expect(bookmarks).to include "http://www.facebook.com"
  end
end