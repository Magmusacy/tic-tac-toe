require_relative 'player_one'
require_relative 'player_two'
class Board
  attr_accessor :upr_row, :midl_row, :botm_row

  def initialize(row_array)
    @upr_row = row_array[0]
    @midl_row = row_array[1]
    @botm_row = row_array[2]
    p row_array
  end

  def show_board
    width = 60
    puts
    puts "#{upr_row[0]}|#{upr_row[1]}|#{upr_row[2]}".center(width)
    puts "#{midl_row[0]}|#{midl_row[1]}|#{midl_row[2]}".center(width)
    puts "#{botm_row[0]}|#{botm_row[1]}|#{botm_row[2]}".center(width)
    puts 
  end
  
  def check_for_win(p)
    case
    when @upr_row = [p.sign,p.sign,p.sign] then match_in_progress = false
    when @midl_row = [p.sign,p.sign,p.sign] then match_in_progress = false
    when @botm_row = [p.sign,p.sign,p.sign] then match_in_progress = false
    else "siema"
    end
    puts "#{p.name} has won the game"
  end
end
