# snake_case for variables, camelCase for classes
# Define our board
board = ((1..6).map{ |_| (1..7).map{ |_| 0 } })
# The same thing, but indented:
# board = ((1..6).map do |_| 
#   (1..7).map do |_|
#     0
#   end.join('|') 
# end)
  
# def is for writing functions, which are called methods in ruby
def print_board(current_board)
  # Print the current state of the board
  puts current_board.map(&:join)
end

# update a chosen index/column of the board array with the player number
def token_drop(current_board, player, column)
  row = 0
  for i in current_board
    if current_board[row] = 0
      row += 1
      # puts row
    end
  end
  current_board[row][column] = player
  print_board(current_board)
end

# drop a token
token_drop(board, 1, 1)
