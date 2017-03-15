require_relative "player"
require_relative "die"
require_relative "board"
require_relative "ladder"
require_relative "snake"
require_relative "game"

#################

@board1 = Board.new(100)

  @ladder1 = Ladder.new(4, 14)
  @ladder2 = Ladder.new(9, 31)
  @ladder3 = Ladder.new(20, 38)
  @ladder4 = Ladder.new(28, 84)
  @ladder5 = Ladder.new(40, 59)
  @ladder6 = Ladder.new(51, 67)
  @ladder7 = Ladder.new(63, 81)
    @board1.add_ladder(@ladder1)
    @board1.add_ladder(@ladder2)
    @board1.add_ladder(@ladder3)
    @board1.add_ladder(@ladder4)
    @board1.add_ladder(@ladder5)
    @board1.add_ladder(@ladder6)
    @board1.add_ladder(@ladder7)

  @snake1 = Snake.new(17, 7)
  @snake2 = Snake.new(64, 60)
  @snake3 = Snake.new(89, 26)
  @snake4 = Snake.new(95, 75)
  @snake5 = Snake.new(99, 78)
    @board1.add_snake(@snake1)
    @board1.add_snake(@snake2)
    @board1.add_snake(@snake3)
    @board1.add_snake(@snake4)
    @board1.add_snake(@snake5)

@player1 = Player.new("Jake")
@player2 = Player.new("Sam")

@die1 = Die.new(6)

@game1 = GameEngine.new(@board1, @die1)
  @game1.populate_with_player(@player1)
  @game1.populate_with_player(@player2)

@game1.populate_with_player(@player1)
@game1.populate_with_player(@player2)

#################

@game1.greet()
puts ""
@game1.turn()

@game1.end_message()


