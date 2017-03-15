require ("minitest/autorun")
require ("minitest/rg")
require_relative "../die"


class TestDice < MiniTest::Test 

  def setup
    @dice = Die.new(6)
  end

  def test_can_roll
    assert_equal(Integer, @dice.roll.class)
  end

  def test_number_smaller_than_sides
    ###? best way 
  end

end