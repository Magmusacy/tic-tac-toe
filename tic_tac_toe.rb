require_relative 'board'
board = Board.new([[1,2,3],[4,5,6],[7,8,9]])
###############
p board.upr_row
board.midl_row[1] = "X"
board.botm_row[0] = "O"
board.upr_row = ["O","O","O"]
p board.midl_row
p board.botm_row
board.show_board
################
puts "Welcome to Tic Tac Toe\n".center(60)
print "Please enter a name for player one |X|: "
  player_one_name = gets.chomp
  player_one = PlayerOne.new(player_one_name)
  p player_one.name
  p player_one.sign
print "Please enter a name for player two |O|: "
  player_two_name = gets.chomp
  player_two = PlayerTwo.new(player_two_name)
  p player_two.name
  p player_two.sign
match_in_progress = true
p "elo mordo"
  while match_in_progress do
    p board.check_for_win(player_two)
    gets
  end


