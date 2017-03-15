class GameEngine

  attr_reader :players, :board, :die, :game_status 
  attr_accessor :current_player

  def initialize(board, die)
    @players = []
    @board = board
    @die = die
    @current_player = ""
    @game_status = "not won"
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

  def switch_players()
    current_player_index = @players.index(@current_player)
    if current_player_index == @players.length - 1
      @current_player = @players[0]
    else
      new_player_index = current_player_index + 1
      @current_player = @players[new_player_index]
    end
  end

  def turn()
    while @game_status != "won"
      #current_postion = @current_player.position
      move(@current_player.player_roll)
      if won?(@current_player.position) == true
        @game_status = "won"
      elsif @board.ladders_locations.include?(@current_player.position)
        @current_player.move_again(@board.ladders_locations[@current_player.position])
      elsif #the same for snakes
      else
        @current_player.position = @current_player.position 
      end   
    end
    switch_players()
  end
end


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

 

      






  

