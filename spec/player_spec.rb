require "require_all"
require ("minitest/autorun")
require ("minitest/rg")
require_relative "../player"
require_relative "../die"

class TestPlayer < MiniTest::Test 

  def setup
    @player1 = Player.new("Jake")
    @die1 = Die.new(6)
  end

  def test_player_has_name
    assert_equal("Jake", @player1.name)
  end

  def test_player_starting_position_is_zero
    assert_equal(0, @player1.position)
  end

  def test_player_can_roll
    roll = @player1.player_roll(@die1)
    assert_equal(Integer, roll.class)
  end

  def test_player_move_position
    @player1.move(2)
    assert_equal(2, @player1.position)
  end

  def test_position_cannot_be_less_than_zero
    @player1.move(-2)
    assert_equal(0, @player1.position)
  end

  def test_move_again
    @player1.move_again(14)
    assert_equal(14, @player1.position)
  end

end