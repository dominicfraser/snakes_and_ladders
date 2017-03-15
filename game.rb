class GameEngine

  attr_reader 

  def initialize(board, die)
    @player = []
    @board = board
    @die = die
  end

  def greet()
    puts "Hi!"
  end

  def end()
    puts "Bye!"
  end


end


# greet // end 
# populate players
# turn 
# win
# switch players


# turn:

# WHILE game status = not won 
# player = whoever
# position = whatever
# -role dice
# -move
#   -if position = winning 
#     then return game status = won
#   elsif  position = ladder.start hash
#     then move again
#   elsif position = snake.start hash
#     then move again
#   else 
#     position = position
#   end
# - change player 

 

      






  

