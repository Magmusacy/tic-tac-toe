require_relative 'board'
require 'pry'
board = Board.new([1, 2, 3, 4, 5, 6, 7, 8, 9])

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
  while match_in_progress do
    puts "#{player_one.name}'s turn"
    integer_move = gets.chomp.to_i
      until board.square.include?(integer_move) do
        puts "This position isn't present or was already taken"
        integer_move = gets.chomp.to_i
      end
    player_one.move(board,integer_move)
      board.check_for_win(player_one)
    board.show_board
    puts "#{player_two.name}'s turn"
    integer_move = gets.chomp.to_i
      until board.square.include?(integer_move) do
        puts "This position isn't present or was already taken"
        integer_move = gets.chomp.to_i
      end
    player_two.move(board,integer_move)
      board.check_for_win(player_one)
    board.show_board
  end


