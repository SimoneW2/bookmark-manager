feature 'viewing bookmark' do
  scenario 'shows all bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content('Google: https://google.com')
  end
end
