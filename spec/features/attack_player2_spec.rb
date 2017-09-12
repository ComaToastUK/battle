feature 'Attack' do
  scenario 'attack player2' do
    sign_in_and_play
    click_link('Attack')
    expect(page).to have_content 'James attacked Rory'
  end
end
