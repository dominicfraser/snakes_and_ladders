require ("minitest/autorun")
require ("minitest/rg")
Dir["../*.rb"].each {|file| require file }

class TestBoard < MiniTest::Test 

  def setup
    @board1 = Board.new(50)
  end

end