feature 'See Hit Points' do
  scenario 'see hp' do
    visit('/')
    fill_in :name1, with: 'James'
    fill_in :name2, with: 'Rory'
    click_button 'Submit'
    expect(page).to have_content 'James: 100HP'
  end
end
