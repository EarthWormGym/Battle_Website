def sign_in_and_play
  visit('/')
  fill_in :player_1, with: 'Adam'
  fill_in :player_2, with: 'Sim'
  click_button 'Submit'
end
