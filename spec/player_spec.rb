require ("minitest/autorun")
require ("minitest/rg")
Dir["../*.rb"].each {|file| require file }
#ONLY WORKS IF IN CORRECT STARTING DIR IN TERMINAL

class TestPlatey < MiniTest::Test 

  def setup
    @player1 = Player.new("Jake")
    @die1 = Die.new(6)
  end

  def test_player_has_name
    assert_equal("Jake", @player1.name)
  end

  def test_player_starting_position_is_zero
    assert_equal(0, @player1.position)
  end

  def test_player_can_roll
    roll = @player1.player_roll(@die1)
    assert_equal(Integer, roll.class)
  end

end