require 'sinatra'
require 'shotgun'

class Battle < Sinatra::Base
  get '/battle' do
    p "working"
  end

  run! if app_file == $0
end
