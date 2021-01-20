require_relative "game_board"

class Knight
  # Define legal knight moves, going clockwise.
  LEGAL_MOVES = [
    [-1, -2], [1, -2], # Up 2 Left 1, Up 2 Right 1
    [2, -1], [2, 1],    # Right 2 Up 1, Right 2 Down 1
    [-1, 2], [1, 2],   # Down 2 Left 1, Down 2 Right 1
    [-2, -1], [-2, 1] # Left 2 Up 1, Left 2 Down 1
  ]
  
  attr_reader :position, :parent
  
  def initialize(position, parent = nil)
    @position = position
    @parent = parent
  end

  def get_moves
    LEGAL_MOVES.map { |move| [position[0] + move[0], position[1] + move[1]]}
                           .keep_if { |move| GameBoard.valid_move?(move) }
  end
end