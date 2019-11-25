feature 'Testing infrastructure' do
  scenario 'shows hello world' do
    visit('/testing')
    expect(page).to have_content("Hello world")
  end
end
