require_relative "game_board"
require_relative "knight"

def knight_moves(start, target, board)
  queue = []

  curr = Knight.new(start)
  board.visit(curr.position)

  queue.push(curr)

  turns = 0

  until queue.empty?
    curr = queue.shift

    if curr.position == target
      puts "You made it in #{board.get_path(curr)} moves!"
      return curr.position
    end

    curr.get_moves.each { |move| queue.push(Knight.new(move, curr)) unless board.visited?(move) }

    board.visit(curr.position)
  end
end

test_board = GameBoard.new

knight_moves([3, 3], [4, 3], test_board)