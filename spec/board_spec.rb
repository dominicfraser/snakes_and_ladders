require ("minitest/autorun")
require ("minitest/rg")
require_relative "../player"
require_relative "../die"
require_relative "../board"
require_relative "../ladder"
require_relative "../snake"


class TestBoard < MiniTest::Test 

  def setup
    @player1 = Player.new("Jake")
    @board1 = Board.new(100)
    @ladder1 = Ladder.new(4, 14)
    @snake1 = Snake.new(17, 7)
    @die1 = Die.new(6)
  end

  def test_board_has_squares
    assert_equal(100, @board1.no_squares)
  end

  def test_can_add_ladder_to_ladder_locations
    @board1.add_ladder(@ladder1)
    assert_equal({4 => 14}, @board1.ladders_locations)
  end


end