feature 'See Hit Points' do
  scenario 'see hp' do
    sign_in_and_play
    expect(page).to have_content 'James: 100HP'
  end

  scenario 'see Player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Rory: 100HP'
  end
end
