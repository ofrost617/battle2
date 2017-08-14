require 'sinatra'
require 'shotgun'

get '/' do
  "hello!"
end

get '/secret' do
  "goodbye!"
end

get '/secretpath' do
  "it was great to see you!"
end

get '/cat' do
  @name = ["Alessio","Puyan"].sample
  erb(:index)
end
