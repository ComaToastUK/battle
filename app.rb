require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  set :session_secret, 'super secret'

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
    @game.attack(@game.opponent_of(@game.current_turn))
    erb(:attack)
  end

  post '/switch-turns' do
    $game.switch_turns
    redirect('/play')
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
  end
