require_relative "game_board"
require_relative "knight"

def knight_moves(start, target, board)
  queue = []

  curr = Knight.new(start)
  board.visit(curr.position)

  queue.push(curr)

  until queue.empty?
    curr = queue.shift

    if curr.position == target
      puts "here"
      return curr.position
    end

    curr.get_moves.each { |move| queue.push(Knight.new(move)) unless board.visited?(move) }

    board.visit(curr.position)

    board.print_board
    puts "testing"
    puts
  end
end

test_board = GameBoard.new

test_board.print_board

puts

knight_moves([3, 3], [5, 1], test_board)

test_board.print_board