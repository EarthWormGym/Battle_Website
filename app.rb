require 'sinatra'
require './lib/player'
class Battle < Sinatra::Base

  enable :sessions

  get '/battle' do
    p "working"
  end

  get '/infra' do
   'Testing infrastructure working!'
  end

  get '/' do
    erb :index
  end

  post '/player-names' do
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    erb :play
  end

  get '/attack' do
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    # @player_1.attack(@player_2)
    erb :attack
  end
end
