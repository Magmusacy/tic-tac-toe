require_relative 'board'
board = Board.new([[1,2,3],[4,5,6],[7,8,9]])
board.show_board
p board.upr_row
p board.midl_row
p board.botm_row