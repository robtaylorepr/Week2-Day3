require_relative 'card'
require 'pry'

# make a deck of 52 cards, giving them values

def face_to_value(face)
  conversion = {
  'jack'   => 11,
  'queen'  => 12,
  'king'   => 13,
  'ace'    => 14
  }
  conversion[face]
end

def value_to_face(value)
  conversion = {
  11 =>  'jack',
  12 =>  'queen',
  13 =>  'king',
  14 =>  'ace'
  }
  conversion[value]
end

def makeface(value,suit)
  descripter = value.to_s
  facename = value_to_face(value)
  if facename
    descripter = facename
  end
  s = "#{descripter}"
  # puts s
  s
end

class Deck
  attr_accessor :deck
  def initialize
    makedeck
  end
  def makedeck
    suits  = %w(Club Spade Hearts Diamonds)
    values = [2,3,4,5,6,7,8,9,10,11,12,13,14]
    self.deck = []
    values.each {|value|
      suits.each {|suit|
        card = Card.new
        card.suit  = suit
        card.value = value
        card.face  = makeface(value,suit)
        deck << card
      }
    deck
    }
    def shuffle
      deck.shuffle!
    end
    def empty?
      deck.length == 0
    end
  end

  def draw
    deck.shift
  end

end
