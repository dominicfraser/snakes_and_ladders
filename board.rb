class Board

  attr_reader :no_squares, :ladders_locations, :snakes_locations

  def initialize(no_squares)
    @no_squares = no_squares
    @ladders_locations = {}
    @snakes_locations = {}
  end

  def move_again(finish, player)
    player.position = finish
  end

end







# def move(by_amount)
#   @position += by_amount
#   if @position < 0 then @position = 0 end
# end