require ("minitest/autorun")
require ("minitest/rg")
#Dir["../*.rb"].each {|file| require file }
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

  def test_move_up
   new_position = @player1.move_up(4)
    assert_equal(14, new_position )
  end

# => player1.position = 0
# => @player1.move_up(4)
# => @player.position  = 4
# =>  do logic do say if he hits a ladder he goes to new position
# => 14 
# => assert (14, @player1.position)

end