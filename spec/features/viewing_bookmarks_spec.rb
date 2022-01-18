feature 'viewing bookmarks' do
  scenario 'visiting the home page' do
    visit ('/')
    expect(page).to have_content "Bookmark Manager"
  end

  scenario 'viewing list of bookmarks' do
    visit ('/bookmarks')
    expect(page).to have_content "http://www.google.com"
    expect(page).to have_content "http://www.outlook.com"
    expect(page).to have_content "http://www.facebook.com"
  end
end

