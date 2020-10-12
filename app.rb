require "sinatra"
require 'shotgun'

set :session_secret, "here be dragons"

get '/' do
  "Kiril and Charlie's page"
end

get '/secret' do
  "12345"
end

get '/super_secret' do
  "Shhhh!"
end

get "/notsecret" do
  "Woah!"
end

get "/thing" do
  "it's a thingy"
end

get "/cat" do
  @rand_name = ["Kiril", "Charlie"].sample
  erb(:index)
end
