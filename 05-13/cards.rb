require 'pry'

module IronYardGames

class Card
  RANKS = (2..10).to_a + [:J, :Q, :K, :A]
  SUITS = [:diamonds, :clubs, :spades, :hearts]
  RANK_VALUES = {J: 11, Q: 12, K: 13, A: 14}
  # attr_reader :rank
  # attr_writer :rank
  attr_accessor :rank, :suit
include Comparable

def initialize(rank=nil, suit=nil)
  @rank = rank || RANKS.sample
  @suit = suit || SUITS.samplex
end

  def value
    val = RANK_VALUES[self.rank]
    val ||= self.rank
    end
  def <=>(other)
  self.value <=> other.value
  end



  end





  class Deck < Card

    include Enumerable

    def initialize
    @deck = dealing
  end

    def dealing
      @cards = []
      Card::SUITS.each do |suit|
        Card::RANKS.each do |rank|
          @cards << Card.new(rank, suit)
        end
      end
      @deck
   end

  #  def draw
  #    Deck.pop(5)
  #
  #  end
  #
  #
  #

  def draw(n)
    @hand = []
    n.times do
      @hand << @deck[0]
      @deck = @deck - @hand
    end
    @hand
  end


  def peek
    @show_card = @deck[0]
  end


  def shuffle
    @deck = @deck.shuffle
  end
  

  def each
    if block_given?
      @deck.each { |x| yield(x) }
    end
  end
end



class Hand
  def initialize
    @hand = deal_hand(IronYardGames::Deck.new)
    show_hand
  end
  def deal_hand(deck_hand)
    @hand = deck_hand.draw(5)
  end
  def show_hand
    @show_hand = []
    @hand.each { |x|
      rank = x[0].to_s
      suit = x[1].to_s.capitalize
      rank = rank[0]
      suit = suit[0]
      @show_hand << "#{rank}#{suit}"
    }
    @show_hand
  end

end

end


class CardTest <







binding.pry
