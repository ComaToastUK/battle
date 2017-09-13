feature 'Switch turns' do
  scenario 'player1 has had turn, player2 should be able to attack' do
    sign_in_and_play
    click_link('Attack')
    click_link('OK')
    expect(page).to have_content 'Rory\'s turn'
  end
end
