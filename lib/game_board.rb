class GameBoard
  BOARD_SIZE = 8

  attr_reader :board

  def initialize
    board = Array.new(BOARD_SIZE { Array.new(BOARD_SIZE) })
  end

  def valid_move?(position)
    position[0].between?(0 , BOARD_SIZE - 1) && position[1].between?(0, BOARD_SIZE - 1)
  end
end