require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    p params
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    $game = Game.new(player1, player2)
    redirect '/play'
  end

  get '/play' do
    p params
    @game = $game
    erb(:play)
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.player2)
    erb(:attack)
  end

  get '/player2_play' do
    p params
    @game = $game
    erb(:player2_play)
  end

  get '/player2_attack' do
    @game = $game
    @game.attack(@game.player1)
    erb(:player2_attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
  end
