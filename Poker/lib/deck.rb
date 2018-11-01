require_relative 'card'

class Deck
  
  attr_accessor :cards
  
  def initialize
    @cards = create_deck
  end
  
  def shuffle!
    @cards.shuffle!
  end
  
  def deal(num)
    dealt = []
    num.times { dealt << @cards.pop }
    dealt 
  end
  
  def create_deck
    suits = ["hearts", "diamonds", "spades", "clubs"]
    card_arr = []
    suits.each do |suit|
      (2..14).each do |value|
        card_arr << Card.new(value, suit)
      end
    end
    card_arr
  end
end