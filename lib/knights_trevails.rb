require_relative "game_board"
require_relative "knight"

board = GameBoard.new

test_knight = Knight.new([3,3])
test_knight2 = Knight.new([0, 0])

p test_knight.children
p test_knight2.children