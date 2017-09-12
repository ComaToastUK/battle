feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :name1, with: 'James'
    fill_in :name2, with: 'Rory'
    click_button 'Submit'
    expect(page).to have_content 'James vs. Rory'
  end
end
