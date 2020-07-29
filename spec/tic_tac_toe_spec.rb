require './board.rb'
describe Board do
  describe "#check_for_win" do
    it "Returns false if the player has won" do
      board = Board.new(["X", "X", "X", 4, 5, 6, 7, 8, 9])
      expect(board.check_for_win("X")).to eql(false)
    end

    it "Returns draw if there's a draw" do
      board = Board.new(["X", "X", "O", "X", "O", "O", "O", "X", "O"])
      expect(board.check_for_win("X")).to eql("draw")
    end

    it "Returns nil if game should continue" do
      board = Board.new(["X", "X", 3, "X", "O", 6, "O", "X", "O"])
      expect(board.check_for_win("X")).to eql(nil)
    end
  end
end
  