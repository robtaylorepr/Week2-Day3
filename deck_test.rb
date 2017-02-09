#!/usr/bin/env ruby
require 'minitest/autorun'
require_relative 'deck'

class DeckTest < MiniTest::Test

  def setup
    @newdeck = Deck.new
  end

  def test_deck_is_52
    assert @deck.deck.length == 52
  end

# Yet to be completed !!!
# A deck contains 13 of each suit
  def test_contains_13_eachsuit
    assert true == false
  end

# A deck contains four of each face of cards
  def test_contains_four_eachface
    assert true == false
  end

# A deck is shuffled on creation
  def test_shuffled
    assert true == false
  end

  def test_draw_reduces_deck
    before = @deck.length
    junk = @deck.draw
    after = @deck.length
    assert after < before
  end
end
