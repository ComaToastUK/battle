feature 'Switch turns' do


  scenario 'player1\'s turn' do
      sign_in_and_play
      expect(page).not_to have_content "Rory's turn"
      expect(page).to have_content "James's turn"
    end

  scenario 'player1 has had turn, player2 should be able to attack' do
    sign_in_and_play
    click_link('Attack')
    click_button('OK')
    expect(page).not_to have_content 'James\'s turn'
    expect(page).to have_content 'Rory\'s turn'
  end
end
