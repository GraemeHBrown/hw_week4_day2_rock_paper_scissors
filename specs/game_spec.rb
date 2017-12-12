require ('minitest/autorun')
require_relative ('../models/game')

class TestGame < MiniTest::Test

  def setup
    @draw = Game.new('paper', 'paper')
  end

  def test_paper_paper_returns_draw()
    assert_equal('draw', @draw.play())
  end


end
