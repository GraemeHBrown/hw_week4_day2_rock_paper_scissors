class Game

  def initialize(move1, move2)
      @move1 = move1
      @move2 = move2
  end

  def play()
    if @move1 == 'paper' && @move2 == 'paper'
      return 'draw'
    end
  end


end
