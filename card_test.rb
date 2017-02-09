#!/usr/bin/env ruby
require ‘minutest/autorun’
require_relative 'card'

class TestIt < MinitTest::Test

  def test_card_not_nil(card )
    assert card.suit  != nil
    assert card.value != nil
    assert card.face  != nil
  end

  # An Ace has a value of 14
  def test_Kins_is_13 (card)

  # A King has a value of 13

  # A Queen has a value of 12
  # A Jack has a value of 11


end
