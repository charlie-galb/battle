require "sinatra"

get '/' do
  "Kiril and Charlie's page"
end

get '/secret' do
  "12345"
end