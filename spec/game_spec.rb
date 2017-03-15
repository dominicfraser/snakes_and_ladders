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
    @player2 = Player.new("Sam")
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

  def test_populate_players
    @game1.populate_with_player(@player1)
    @game1.populate_with_player(@player2)
    assert_equal([@player1, @player2], @game1.players)
  end

  def test_switch_players
    @game1.current_player = @player1

    @game1.populate_with_player(@player1)
    @game1.populate_with_player(@player2)

    @game1.switch_players

    assert_equal(@player2, @game1.current_player)
  end

  def test_switch_from_last_player
    @game1.current_player = @player2

    @game1.populate_with_player(@player1)
    @game1.populate_with_player(@player2)

    @game1.switch_players

    assert_equal(@player1, @game1.current_player)
  end

end