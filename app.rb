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
  "it's a thing"
end

get "/cat" do
  "<div style='border: 3px dashed red'>
    <img src='http://bit.ly/1eze8aE'>
  </div>"
end
