require_relative "game_board"
require_relative "knight"

def knight_moves(start, target, board)
  queue = []

  queue.push(start)

  curr = Knight.new(queue.shift)

  until curr == target
    curr.get_moves.each { |move| queue.push(move) unless board.visited?(move) }

    board.visited(curr)


  end
end

test_board = GameBoard.new

test_knight = Knight.new([3,3])
test_knight2 = Knight.new([0, 0])

test_knight.get_moves.each do |move|
  p move
end

puts

test_knight2.get_moves.each do |move|
  p move
end

test_board.print_board

puts

test_board.visited([2, 2])

knight_moves([3, 3], [4, 3], test_board)

test_board.print_board