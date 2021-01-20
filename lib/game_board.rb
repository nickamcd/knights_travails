class GameBoard
  BOARD_SIZE = 8

  attr_reader :board

  def initialize
    @board = Array.new(BOARD_SIZE) { Array.new(BOARD_SIZE, false) }
  end

  def self.valid_move?(position)
    position[0].between?(0 , BOARD_SIZE - 1) && position[1].between?(0, BOARD_SIZE - 1)
  end

  def print_board
    board.each do | row |
      p row
    end
  end

  def visit(position)
    board[position[0]][position[1]] = true
  end

  def visited?(position)
    board[position[0]][position[1]]
  end

  def get_path(piece)
    p piece.position
    return 0 if piece.parent.nil?
    get_path(piece.parent) + 1
  end
end