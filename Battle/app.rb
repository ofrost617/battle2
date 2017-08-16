require 'sinatra/base'
require 'shotgun'

class MyApp < Sinatra::Base

  get '/Battle' do
    "Hello Battle!"
  end

 run! if app_file == $0
end
