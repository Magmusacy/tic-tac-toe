require_relative 'player_one'
require_relative 'player_two'
class Board
  attr_accessor :square
  def initialize(square)
    @square = square
  end
  
  def show_board
    width = 60
    puts
    puts "#{square[0]}|#{square[1]}|#{square[2]}".center(width)
    puts "#{square[3]}|#{square[4]}|#{square[5]}".center(width)
    puts "#{square[6]}|#{square[7]}|#{square[8]}".center(width)
    puts 
  end
  
  def check_for_win(p)
    case
    when "#{square[0]}#{square[1]}#{square[2]}" == p.sign * 3 then return false
    when "#{square[3]}#{square[4]}#{square[5]}" == p.sign * 3 then return false
    when "#{square[6]}#{square[7]}#{square[8]}" == p.sign * 3 then return false
    when "#{square[0]}#{square[3]}#{square[6]}" == p.sign * 3 then return false
    when "#{square[1]}#{square[4]}#{square[7]}" == p.sign * 3 then return false
    when "#{square[2]}#{square[5]}#{square[8]}" == p.sign * 3 then return false
    when "#{square[0]}#{square[4]}#{square[8]}" == p.sign * 3 then return false
    when "#{square[2]}#{square[4]}#{square[6]}" == p.sign * 3 then return false
    else return true
    end
  end
end
