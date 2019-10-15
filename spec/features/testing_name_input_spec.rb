require './app'
require 'spec_helper'

feature 'Testing name submits' do
  scenario 'can fill in player names and click submit button' do
    visit('/player-names')
    fill_in 'post[player_1]', with 'Adam'
    fill_in 'post[player_2]', with 'Sim'
    find('Submit').click
    expect(@player_1).to eq('Adam')
    expect(@player_2).to eq('Sim')
  end
end
