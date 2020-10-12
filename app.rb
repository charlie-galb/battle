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

get "/random-cat" do
  @name = ["Kiril", "Charlie"].sample
  erb(:index)
end

# get "/named-cat" do
#   p params
#   @name = params[:name]
#   erb(:index)
# end

post "/named-cat" do
  p params
  @name = params[:name]
  erb(:index)
end

get "/cat_form" do
  erb(:cat_form)
end

# post "/cat_form" do
#   erb(:cat_form)
# end
