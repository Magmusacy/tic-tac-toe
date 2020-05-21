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
    puts "#{upr_row[0]}|#{upr_row[1]}|#{upr_row[2]}".center(width)
    puts "#{midl_row[0]}|#{midl_row[1]}|#{midl_row[2]}".center(width)
    puts "#{botm_row[0]}|#{botm_row[1]}|#{botm_row[2]}".center(width)
  end
  def check_rows
    
  end
end