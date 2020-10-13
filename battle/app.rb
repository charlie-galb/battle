require 'sinatra'

class Battle < Sinatra::Base
  get '/' do
    erb :index
  end
  post '/names' do
    @Player1_Name = params[:Player1_Name]
    @Player2_Name = params[:Player2_Name]
    erb :play
  end
end
