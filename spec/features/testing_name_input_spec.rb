require './app'
require 'spec_helper'

feature 'Testing name submits' do
  scenario 'can fill in player names and click submit button' do
    sign_in_and_play
    expect(page).to have_content "player 1's name is:Adam, player 2's name is:Sim"
  end
end

feature 'Testing player_2\'s health' do
  scenario 'can check how much health player 2 has' do
    sign_in_and_play
    expect(page).to have_content "Sim's health is:60HP"
  end
end

feature 'Attacking' do
  scenario 'attack Player 2' do
    sign_in_and_play
    click_button'Attack'
    expect(page).to_not have_content 'Sim\'s health is:60HP'
    expect(page).to have_content 'Adam attacked Sim'
    expect(page).to have_content 'Sim\'s health is:50HP'
  end
end
