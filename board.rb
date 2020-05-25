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
    POSSIBLE_WINS.each do |set|
      return false if square[set[0]] == p.sign && square[set[1]] == p.sign && square[set[2]] == p.sign 
    end
  end

  protected
  
  POSSIBLE_WINS = [ [0,1,2],[3,4,5],[6,7,8],
                    [0,3,6],[1,4,7],[1,4,7],
                    [2,5,8],[0,4,8],[2,4,6] 
                  ] # contains indexes of all possible win combinations
end
