class Show
end
  
  board = [" ", "1", "2", "3", "A", ".", ".", ".", "B", ".", ".", ".", "C", ".", ".", "."]

def show_board(board)
  puts " " * 5 + "1" + " " * 3 + "2" + " " * 3 + "3"
  puts "_" * 15
  puts " #{board[0]}   #{board[1]}   #{board[2]}   #{board[3]} "
  puts "---------------"
  puts " #{board[4]} | #{board[5]} | #{board[6]} | #{board[7]} |"
  puts "---------------"
  puts " #{board[8]} | #{board[9]} | #{board[10]} | #{board[11]} |"
  puts "---------------"
  puts " #{board[12]} | #{board[13]} | #{board[14]} | #{board[15]} |"
end

show_board(board)
