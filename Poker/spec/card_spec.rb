require 'card.rb'

RSpec.describe Card do
  #object that contains two values (type and suit)
  card = Card.new
  assign_card = Card.new(0,0)
  describe "#initialize" do
    it "initializes randomly if not passed values" do
      expect(Card::TYPES.include?(card.type)).to eq(true)
      expect(Card::SUITS.include?(card.suit)).to eq(true)
    end
    
    it 'assign type and suite if passed arguments' do
      expect(assign_card.type).to eq(:A)
      expect(assign_card.suit).to eq(:D)
    end
  
  end
end