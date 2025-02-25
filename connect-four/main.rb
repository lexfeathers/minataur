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
  puts ""
  puts current_board.map(&:join)
end

# update a chosen index/column of the board array with the player number
def token_drop(current_board, player, input_column)
  row = 0

  # Trying to iterate through the rows, checking if the current value is zero
  for i in current_board do
    if current_board[row][input_column] = 0
      current_board[row][input_column] = player
    else
      row += 1
    end 
  end
  print_board(current_board)
end

player = 1
# drop a token
token_drop(board, player, 3)
# token_drop(board, player, 3)

# board.each_with_index{ |row, idx|
#   puts "The current row is #{row} at index #{idx}"
# }