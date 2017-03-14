require ("minitest/autorun")
require ("minitest/rg")
Dir["../*.rb"].each {|file| require file }
#ONLY WORKS IF IN CORRECT STARTING DIR IN TERMINAL

class TestPlatey < MiniTest::Test 

  def setup
    @player1 = Player.new("Jake")
  end

  def test_player_has_name
    assert_equal("Jake", @player1.name)
  end


end