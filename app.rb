require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    p params
    $name1 = Player.new(params[:name1])
    $name2 = Player.new(params[:name2])
    redirect '/play'
  end

  get '/play' do
    @name1 = $name1.name
    @name2 = $name2.name
    @p1HP = 100
    @p2HP = 100
    erb(:play)
  end

  get '/attack' do
    @name1 = $name1.name
    @name2 = $name2.name
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
  end
