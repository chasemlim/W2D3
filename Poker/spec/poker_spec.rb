require 'rspec'
require 'game'
require 'player'
require 'hand'
require 'deck'
require 'card'

describe Card do 
  subject(:card) do
    Card.new(12, 'hearts')
  end
  
  describe '#initialize' do
    it 'initializes a value for a card' do
      expect(card.value).to be_an_instance_of(Integer)
      expect(card.value).to eq(12)
    end
    
    it 'initializes a suit for a card' do
      expect(card.suit).to be_an_instance_of(String)
      expect(card.suit).to eq('hearts')
    end
  end
end

describe Deck do
  subject(:deck) do
    Deck.new
  end
  
  suites = ["hearts", "diamonds", "spades", "clubs"]
  hand = []
  suites.each do |suite|
    (2..14).each do |value|
      hand << Card.new(value, suite)
    end
  end
  
  describe "#initialize" do
    it "intializes with a deck of 52 cards" do
      expect(deck.cards.length).to eq(hand.length)
    end
  end
  
  describe "#shuffle!" do
    it "shuffles the deck" do
      expect(deck.cards).to receive(:shuffle!)
      deck.shuffle!
    end
    it "it checks that cards are are instances of Card" do
      expect(deck.cards.last.is_a?(Card)).to be true
    end
  end
    
  describe "#deal" do
    it "deals 5 cards to given players" do
      expect(deck.deal(5).length).to eq(5)
    end
    it "removes 5 cards from the deck" do
      deck.deal(5)
      expect(deck.cards.size).to eq(47)
    end
  end
  
  describe "#create_deck" do
    it "creates a deck of 52 cards" do
      expect(deck.create_deck.size).to eq(52)
    end
  end
end

describe Hand do
  
  subject(:hand) do
    Hand.new
  end
  
  subject(:deck) do
    Deck.new
  end
  
  test_hand1 = [deck.cards.sample]
  test_hand2 = [decks.cards.sample]
  
  deck.cards.each do |card|
    test_hand1 << card if card.to_i == 14
    test_hand2 << card if card.to_i == 2
  end
  
  describe "#initialize" do
    it "starts with 5 cards" do
      expect(hand.cards.size).to eq(5)
    end
  end
  
  describe "#replace" do
    it "takes an array as an argument" do
      expect(hand.replace)
    end      
  end
  
  describe "#value" do
    it "ranks certain hands higher than others" do
    end
  end
end
