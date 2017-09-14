feature 'Lose the battle' do
  scenario 'P2 lost the game' do
    sign_in_and_play
    ten_turns
    expect(page).to have_content 'Rory: 0HP'
    expect(page).to have_content 'Rory lost the battle'
  end

  scenario 'P1 lost the game' do
    sign_in_and_play
    ten_turns
    expect(page).to have_content 'James: 0HP'
    expect(page).to have_content 'Rory lost the battle'
  end
end
