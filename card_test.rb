#!/usr/bin/env ruby
require 'minitest/autorun'
require_relative 'card'

class CardTest < MiniTest::Test

  def setup
    @card = Card.new
  end

  def test_card_not_nil
    @card.suit  = 'Heart'
    @card.face  = 'Ace'
    @card.value = 14
    assert @card.suit  != nil
    assert @card.value != nil
    assert @card.face  != nil
  end

  # An Ace has a value of 14
  def test_Ace_is_14
    @card.suit  = 'Heart'
    @card.face  = 'Ace'
    @card.value = 14
    assert @card.value == 14
  end

  # A King has a value of 13
  def test_King_is_13
    @card.suit  = 'Heart'
    @card.face  = 'King'
    @card.value = 13
    assert @card.value == 13
  end

  # A Queen has a value of 12
  def test_Queen_is_12
    @card.suit  = 'Heart'
    @card.face  = 'Queen'
    @card.value = 12
    assert @card.value == 12
  end

  # A Jack has a value of 11
  def test_Jack_is_11
    @card.suit  = 'Heart'
    @card.face  = 'Jack'
    @card.value = 11
    assert @card.value == 11
  end


end
