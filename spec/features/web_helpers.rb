def sign_in_and_play
  visit('/')
  fill_in :player1, with: 'James'
  fill_in :player2, with: 'Rory'
  click_button 'Submit'
end

def ten_turns
  19.times do
  click_link 'Attack'
  click_button 'OK'
  end
end
