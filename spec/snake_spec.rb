require ("minitest/autorun")
require ("minitest/rg")
require_relative "../player"
require_relative "../die"
require_relative "../board"
require_relative "../ladder"


class TestSnake < MiniTest::Test 

  def setup
    @player1 = Player.new("Jake")
    @board1 = Board.new(100)
    @snake1 = Snake.new(17, 7)
  end


end