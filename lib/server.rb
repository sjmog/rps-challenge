require 'sinatra/base'
require_relative 'game'

class RPS < Sinatra::Base
	enable :sessions
  get '/' do
    p params
    erb :index
  end

  post '/' do
  	@name = params[:name].empty? ? "whoever you are" : params[:name]
  	erb :index
  end

  post '/play' do
    p params
  	session[:game] = Game.new({ last_player_move: params[:move] })
  	@game = session[:game]
  	erb :index
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
