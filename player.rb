class Player

  attr_reader :name, :position


  def initialize(name)
    @name = name
    @position = 0
  end

  def player_roll(die)
    return die.roll()
  end

  def move(by_amount)
    @position += by_amount
    if @position < 0 then @position = 0 end
  end

  def move_again(finish)
    @position = finish
  end


end