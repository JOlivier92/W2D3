require_relative 'deck'

class Hand < Array
  attr_accessor :hand, :hand_value
  
  def initialize(hand = nil)
    current_deck = PokerDeck.new
    current_deck.shuffle!
    @hand ||= current_deck.deck[0..4]
    @hand_value = 0
  end
  
  def compare_hands(other_hand)
    if self.hand_value > other_hand.hand_value
      p self
    else
      p other_hand
    end 
  end
  
end
  # check controller (cycles through each check (royal flush --> straight flush --> [..] --> pair))
  # evaluate hand value 
  
  # def royal_flush_check --> returns 1000
  # def straight flush  ---> returns 900
  # def Four of a kind  ---> returns 800
  # def full house  ---> returns 700
  # def flush  ---> returns 600
  # def straight  ---> returns 500
  # def three_of_a_kind  ---> returns 400
  # def two pair  ---> returns 300
  # def one pair  ---> returns 200
  # def high_card ---> returns 100
  # assign single digit value based off of top card in hand (ie pair of 8s will be 100 + 8)
  # Ace --> 13 || 1(for staight)
  # King --> 12
  # etc
  # Two -->2
  
  #example of hand 
  # Pair 3 == 303
  # Pair 5 == 305
  # Full House Ks == 712
  # Flush with high card Q == 611
  # high 9 == 109
