require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('./models/game.rb')

get('/') do
  erb(:home)
end

get('/home') do
  erb(:home)
end

get('/:move1/:move2') do
  move1 = params[:move1].downcase()
  move2 = params[:move2].downcase()
  game = Game.new(move1, move2)
  @result = game.play()
  if @result == 'Invalid move.'
    erb :error, {:locals => params, :layout => :error_layout}
  else
    erb(:result)
  end
end
