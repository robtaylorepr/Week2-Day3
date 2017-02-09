#!/usr/bin/env ruby
require 'minitest/autorun'
require_relative 'deck'

class DeckTest < MiniTest::Test

  def setup
    @newdeck = Deck.new
  end

  def test_deck_is_52
    assert @newdeck.deck.length == 52
  end

end
