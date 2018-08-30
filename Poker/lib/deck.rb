require_relative 'card'

class PokerDeck
  attr_accessor :deck
  def initialize
    @deck = []
    i = 0
    while i < 4
      j = 0
      while j < 13
        @deck << Card.new(j,i)
        j+=1
      end
      i+=1
    end
    
  end
  
  def shuffle!
    @deck.shuffle!
  end

end