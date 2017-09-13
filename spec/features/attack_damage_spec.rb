# As Player 1,
# So I can start to win a game of Battle,
# I want my attack to reduce Player 2's HP by 10

feature 'Attack damage HP' do
  scenario 'P1 attacks P2' do
    sign_in_and_play
    click_link('Attack')
    expect(page).to have_content '90HP'
  end
end
