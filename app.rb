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

get '/random-cat' do
  @name = ["Alessio","Giulio"].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/naming-form' do
  erb(:index)
end
