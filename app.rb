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
  "<div style='border: 3px dashed red'>
    <img src='http://bit.ly/1eze8aE'>
   </div>"
end
