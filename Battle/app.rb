require 'sinatra/base'
require 'shotgun'

class MyApp < Sinatra::Base

  get '/' do
    'Testing infrastructure working!'
  end

 run! if app_file == $0
end
