require ("minitest/autorun")
require ("minitest/rg")
Dir["../*.rb"].each {|file| require file }

class TestBoard < MiniTest::Test 

  def setup
    @board1 = Board.new(100)
  end

  def test_board_has_squares
    assert_equal(100, @board1.no_squares)
  end


end