
require('sinatra/contrib/all')

class Game

  def initialize(move1, move2)
      @move1 = move1
      @move2 = move2
  end

  def play()
    if @move1 == 'paper' && @move2 == 'paper'
      return 'draw'
    elsif @move1 == 'paper' && @move2 == 'rock'
      return 'paper wins'
    elsif @move1 == 'paper' && @move2 == 'scissors'
      return 'paper loses'
    end

  end


end
