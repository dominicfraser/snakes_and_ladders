require ("minitest/autorun")
require ("minitest/rg")
require_relative "../player"
require_relative "../die"
require_relative "../board"
require_relative "../ladder"


class TestLadder < MiniTest::Test 

  def setup
    @player1 = Player.new("Jake")
    @board1 = Board.new(100)
    @ladder1 = Ladder.new(4, 14)
  end


end