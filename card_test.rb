#!/usr/bin/env ruby
require 'minitest/autorun'
require_relative 'card'

class CardTest < MiniTest::Test

  def setup
    @card = Card.new
    @card.value  = 11
    @card.face   = 'Jack'
    @card.suit   = 'Spade'
  end

  def test_card_not_nil
    assert @card.suit  != nil
    assert @card.value != nil
    assert @card.face  != nil
  end

  # An Ace has a value of 14
  def test_Ace_is_14
    assert @card.value == 14
  end

  # A King has a value of 13
  def test_King_is_13
    assert @card.value == 13
  end

  # A Queen has a value of 12
  def test_Queen_is_12
    assert @card.value == 12
  end

  # A Jack has a value of 11
  def test_Jack_is_11
    assert @card.value == 11
  end


end
