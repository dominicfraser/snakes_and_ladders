class GameEngine

  attr_reader :players, :board, :die

  def initialize(board, die)
    @players = []
    @board = board
    @die = die
  end

  def greet()
    puts "Hi!"
  end

  def end()
    puts "Bye!"
  end

  def won?(position)
    position >= 100 ? true : false
  end

  def populate_with_player(player)
    @players << player
  end

end


# populate players
# turn 

# switch players


# turn:

# WHILE game status = not won 
# player = whoever
# position = whatever
# -role dice
# -move (updates position)
#   -if position = won? == true
#     then return game status = won
#   elsif  position = ladder.start hash
#     then move again
#   elsif position = snake.start hash
#     then move again
#   else 
#     position = position
#   end
# - change player 

 

      






  

