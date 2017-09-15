feature 'Lose the battle' do
  scenario 'P2 lost the game' do
    sign_in_and_play
    ten_turns
    # click_link 'Attack'
    expect(page).to have_content 'Rory\'s HP is depleted'
    expect(page).to have_content 'Rory lost the battle'
  end

  scenario 'P1 lost the game' do
    sign_in_and_play
    ten_turns
    # click_link 'Attack'
    expect(page).to have_content 'James\'s HP is depleted!'
    expect(page).to have_content 'James lost the battle'
  end
end
