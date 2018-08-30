require "towersofhanoi.rb"

RSpec.describe TowerofHanoi do
  practice_game = TowerofHanoi.new
  describe "#Initialize" do
    it "defaults to [[1,2,3],[],[]]" do
      expect(practice_game.board).to eq([[1,2,3],[],[]])
    end
  end
end