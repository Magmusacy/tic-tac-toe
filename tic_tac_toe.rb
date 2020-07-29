require_relative 'board'
board = Board.new([1, 2, 3, 4, 5, 6, 7, 8, 9])

def make_move(board)
  move = gets.chomp.to_i
  unless board.square.include?(move)
    puts "This position isn't present or was already taken" 
    make_move(board)
  else
    move
  end
end

puts "Welcome to Tic Tac Toe\n".center(60)
print "Please enter a name for player one |X|: "
  player_one_name = gets.chomp
  player_one = PlayerOne.new(player_one_name)
print "Please enter a name for player two |O|: "
  player_two_name = gets.chomp
  player_two = PlayerTwo.new(player_two_name)
match_in_progress = true
puts "The match has begun!"
board.show_board

  until match_in_progress == "draw" || match_in_progress == false do
    puts "#{player_one.name}'s turn"
    integer_move = make_move(board)

    player_one.move(board,integer_move)
      match_in_progress = board.check_for_win(player_one.sign)
    board.show_board

    case match_in_progress
      when false then puts "#{player_two.name} has won this match! Congratulations"; break
      when "draw" then puts "Draw! Nobody is a winner"; break
    end

    puts "#{player_two.name}'s turn"
    integer_move = make_move(board)

    player_two.move(board,integer_move)
    p player_two
      match_in_progress = board.check_for_win(player_two.sign)
    board.show_board

      case match_in_progress
        when false then puts "#{player_two.name} has won this match! Congratulations"; break
        when "draw" then puts "Draw! Nobody is a winner"; break
      end

  end
