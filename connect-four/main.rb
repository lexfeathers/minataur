# Define our board
board = ((1..6).map{ |column| (1..7).map{ |row| 0 }.join('|') })
# The same thing, but indented:
# board = ((1..6).map do |column| 
#   (1..7).map do |row|
#     0
#   end.join('|') 
# end)

# Snake case for variables, camelcase for classes
def print_board(current_board)
  # Print the current state of the board
  puts current_board
end

print_board(board)