class Card
  
  attr_reader :value, :suit
  
  def initialize(value, suit)
    @value = value
    @suit = suit
  end
  
  def to_i
    @value.to_i
  end
  
end