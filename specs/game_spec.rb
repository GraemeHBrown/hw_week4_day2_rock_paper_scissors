require ('minitest/autorun')
require_relative ('../models/game')

class TestGame < MiniTest::Test

  def setup
    @paper_draws_with_itself = Game.new('paper', 'paper')
    @paper_wins_against_rock = Game.new('paper', 'rock')
    @paper_loses_against_scissors = Game.new('paper', 'scissors')
    @rock_draws_with_itself = Game.new('rock', 'rock')
    @rock_paper_paper_wins = Game.new('rock', 'paper')
    @rock_scissors_rock_wins = Game.new('rock', 'scissors')
    @scissors_draws_with_itself = Game.new('scissors', 'scissors')
    @scissors_rock_rock_wins = Game.new('scissors', 'rock')
    @scissors_paper_scissors_wins = Game.new('scissors','paper')
  end

  def test_paper_paper_returns_draw()
    assert_equal('draw', @paper_draws_with_itself.play())
  end

  def test_paper_rock_paper_wins()
    assert_equal('paper wins', @paper_wins_against_rock.play())
  end

  def test_paper_scissors_scissors_wins()
    assert_equal('scissors wins', @paper_loses_against_scissors.play())
  end

  def test_rock_rock_returns_draw()
      assert_equal('draw', @rock_draws_with_itself.play())
  end

  def test_rock_paper_paper_wins()
    assert_equal('paper wins', @rock_paper_paper_wins.play())
  end

  def test_rock_scissors_rock_wins()
    assert_equal('rock wins', @rock_scissors_rock_wins.play())
  end

  def test_scissors_scissors_returns_draw()
    assert_equal('draw', @scissors_draws_with_itself.play())
  end

  def test_scissors_rock_rock_wins()
    assert_equal('rock wins', @scissors_rock_rock_wins.play())
  end

  def test_scissors_paper_scissors_wins()
    assert_equal('scissors wins', @scissors_paper_scissors_wins.play())
  end

end
