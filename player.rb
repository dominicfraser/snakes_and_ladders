class Player

  attr_reader :name, :position

  def initialize(name)
    @name = name
    @position = 0
  end

  def player_roll(die)
    return die.roll()
  end

end