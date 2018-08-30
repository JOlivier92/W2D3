require 'deck.rb'

RSpec.describe PokerDeck do
  pokerdeck = PokerDeck.new
  describe "#initialize" do
    it "has 52 Cards" do
      expect(pokerdeck.deck.length).to eq(52)
    end
    #check card class
    
  end
  
  
  describe "#shuffle" do
    it "shuffles the deck" do 
      expect(pokerdeck.shuffle!).to_not eq(pokerdeck)
    end
  end
  
  
  
end