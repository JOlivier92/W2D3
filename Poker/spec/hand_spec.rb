require 'hand.rb'
require 'card.rb'

RSpec.describe Hand do
  test_hand = Hand.new
  bad_hand = Hand.new([Card.new(2,1),Card.new(3,3),
                       Card.new(5,3),Card.new(6,3),Card.new(7,1)])
                       
  good_hand = Hand.new([Card.new(2,1),Card.new(3,1),
                        Card.new(4,1),Card.new(5,1),Card.new(6,1)])
                        
  describe '#initialize' do
    it 'array of five cards' do
      expect(test_hand.all? { |card| card.instance_of?(Card)}).to eq(true)
    end  
  end
  describe '#compare_hands' do
    bad_hand.hand_value = 707
    good_hand.hand_value = 1012
    it "Compare two hands and return strongest one" do
      expect(good_hand.compare_hands(bad_hand)).to eql(good_hand)
    end
  end
    
  #check different hands (50 million methods)
  
end