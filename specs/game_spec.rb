require ('minitest/autorun')
require_relative ('../models/game')

class TestGame < MiniTest::Test

  def setup
    @paper_draws_with_itself = Game.new('paper', 'paper')
    @paper_wins_against_rock = Game.new('paper', 'rock')
    @paper_loses_against_scissors = Game.new('paper', 'scissors')
    @paper_loses_against_scissors = Game.new('paper', 'scissors')
    @rock_draws_with_itself = Game.new('rock', 'rock')
  end

  def test_paper_paper_returns_draw()
    assert_equal('draw', @paper_draws_with_itself.play())
  end

  def test_paper_wins_against_rock()
    assert_equal('paper wins', @paper_wins_against_rock.play())
  end

  def test_paper_loses_against_scissors()
    assert_equal('paper loses', @paper_loses_against_scissors.play())
  end

  def test_rock_rock_returns_draw()
      assert_equal('draw', @rock_draws_with_itself.play())
  end



end
