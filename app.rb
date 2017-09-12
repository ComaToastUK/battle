require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    'Testing infrastructure working!'
    erb(:index)
  end

  post '/battle' do

    p params
    @name1 = params[:name1]
    @name2 = params[:name2]
    erb(:battle)

  end


  # start the server if ruby file executed directly
  run! if app_file == $0
  end
