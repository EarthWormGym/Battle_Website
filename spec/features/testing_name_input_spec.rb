require './app'
require 'spec_helper'

feature 'Testing name submits' do
  scenario 'can fill in player names and click submit button' do
    visit('/player-names')
    fill_in :player_1, with: 'Adam'
    fill_in :player_2, with: 'Sim'
    click_button 'Submit'
    expect(page).to have_content "player 1's name is:Adam, player 2's name is:Sim"
  end
end
