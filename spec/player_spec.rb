require "require_all"
require ("minitest/autorun")
require ("minitest/rg")
require_relative "../player"
require_relative "../die"
require_relative "../board"
require_relative "../ladder"
require_relative "../snake"


class TestPlayer < MiniTest::Test 

  def setup
    @player1 = Player.new("Jake")
    @board1 = Board.new(100)
    @die1 = Die.new(6)
    @ladder1 = Ladder.new(4, 14)
    @board1.add_ladder(@ladder1)
    @snake1 = Snake.new(17, 7)
    @board1.add_snake(@snake1)
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

  def test_is_position_in_ladders
    @player1.move(4)
    assert_equal(true, @player1.on_ladder?(@board1))
  end

  def test_is_position_in_snakes
    @player1.move(17)
    assert_equal(true, @player1.on_snake?(@board1))
  end

end