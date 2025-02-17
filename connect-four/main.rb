# Snake case for variables, camelcase for classes
# Define our board
board = ((1..6).map{ |_| (1..7).map{ |_| 0 }.join('|') })
# The same thing, but indented:
# board = ((1..6).map do |_| 
#   (1..7).map do |_|
#     0
#   end.join('|') 
# end)

# def is for writing functions, which are called methods here
def print_board(current_board)
  # Print the current state of the board
  puts current_board
end

print_board(board)