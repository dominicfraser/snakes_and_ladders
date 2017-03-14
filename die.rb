class Die

  attr_reader :no_sides

  def initialize(no_sides)
    @no_sides = no_sides
  end

  def roll()
    return rand(1..@no_sides)
  end

end