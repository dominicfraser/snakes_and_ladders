require ("minitest/autorun")
require ("minitest/rg")
Dir["../*.rb"].each {|file| require file }

class TestLadder < MiniTest::Test 

  def setup
    @board1 = Board.new(100)
    @ladder1 = Ladder.new(4, 14)
  end

  


end