class Board

  attr_reader :no_squares, :ladders_locations, :snakes_locations

  def initialize(no_squares)
    @no_squares = no_squares
    @ladders_locations = {}
    @snakes_locations = {}
  end

  def add_ladder(ladder)
    @ladders_locations[ladder.start] = ladder.finish
  end

  def add_snake(snake)
    @snakes_locations[snake.start] = snake.finish
  end

end






