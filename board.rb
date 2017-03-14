class Board

  attr_reader :no_squares, :ladders_locations, :snakes_locations

  def initialize(no_squares)
    @no_squares = no_squares
    @ladders_locations = {}
    @snakes_locations = {}
  end

end