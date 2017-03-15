require ("minitest/autorun")
require ("minitest/rg")
require_relative "../player"
require_relative "../die"
require_relative "../board"
require_relative "../ladder"
require_relative "../snake"
require_relative "../game"




class TestGameEngine < MiniTest::Test 

  def setup
    @player1 = Player.new("Jake")
    @board1 = Board.new(100)
    @ladder1 = Ladder.new(4, 14)
    @snake1 = Snake.new(17, 7)
    @die1 = Die.new(6)
    @game1 = GameEngine.new(@board1, @die1)
  end

  def test_game_is_won
    @player1.move(100)
    assert_equal(true, @game1.won?(100))
  end

end