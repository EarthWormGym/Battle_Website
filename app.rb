require 'sinatra'
require 'shotgun'

class Battle < Sinatra::Base
  get '/battle' do
    p "working"
  end


  get '/' do
   'Testing infrastructure working!'
  end

  get '/player-names' do
    erb :index
  end

  post '/player-names' do
    @player_1 = params[:player_1]
    @player_2 = params[:player_2]
    erb :index
    erb :play
  end

  run! if app_file == $0
end
