class Card
  TYPES = [:A,:two, :three, :four,:five,:six,:seven,:eight,:nine,:ten,:J,:Q,:K]
  SUITS = [:D, :C, :S, :H]
  # :2,:3,:4,:5,:6,:7,:8,:9,:10,
  
  attr_reader :type, :suit
  def initialize(type_index = (0..12).to_a.sample, suit_index = (0..3).to_a.sample)
    @type = TYPES[type_index]
    @suit = SUITS[suit_index]
  end

  def inspect
    "Type : #{@type}, Suit : #{@suit}"
  end
end