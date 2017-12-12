require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('./models/game.rb')

get('/') do
  erb(:home)
end

get('/:move1/:move2') do
  game = Game.new(params[:move1], params[:move2])
  @result = game.play()
  erb(:result)
end
