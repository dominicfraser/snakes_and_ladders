require ("minitest/autorun")
require ("minitest/rg")
require_relative "../player"
require_relative "../die"
require_relative "../board"


class TestBoard < MiniTest::Test 

  def setup
    @board1 = Board.new(100)
    @player1 = Player.new("Jake")
  end

  def test_board_has_squares
    assert_equal(100, @board1.no_squares)
  end



  def test_move_again
    @player1.move_again(14, @player1)
    assert_equal(14, @player1.position)
  end


end