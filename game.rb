#!/usr/bin/env ruby
require_relative 'deck'
require 'tty'

class Game
  attr_accessor   :winner, :a_score, :b_score,
                  :a_captured, :b_captured,
                  :a_deck, :b_deck, :debug
  def initialize
    @winner     = winner
    @a_score    = a_score
    @b_score    = b_score
    @a_captured = a_captured
    @b_captured = b_captured
    @a_deck     = a_deck
    @b_deck     = b_deck
    @debug      = debug
    self.a_score = 0
    self.b_score = 0
    self.a_captured = []
    self.b_captured = []
    self.a_deck     = []
    self.b_deck     = []
    self.debug      = false
  end

  def play
    # create deck a
    self.a_deck = Deck.new
    self.a_deck.shuffle

    # create deck b
    self.b_deck = Deck.new
    self.b_deck.shuffle

    self.a_score = 0
    self.b_score = 0

    until a_deck.empty? || b_deck.empty?
      carda = a_deck.draw
      cardb = b_deck.draw
      puts "draw cards"                if debug
      puts "   carda is #{carda.face}" if debug
      puts "   cardb is #{cardb.face}" if debug
      if carda > cardb
        puts "   a wins" if debug
        self.a_score += 1
      elsif carda < cardb
        puts "   b wins" if debug
        self.b_score += 1
      else
        puts "   tie"    if debug
      end
    end

    puts ' '
    if self.a_score > self.b_score
      puts "Player a wins #{a_score} to #{b_score}" if debug
      self.winner = 'a'
    elsif b_score > a_score
      puts "Player b wins #{b_score} to #{a_score}" if debug
      self.winner = 'b'
    else
      puts "Draw" if debug
      self.winner = nil
    end
  end
end

game = Game.new
begin
  prompt = TTY::Prompt.new
  game.play
  game.winner ? (puts "Winner is #{game.winner}") : (puts "Draw")
  s = "Would you like a rematch (y/n)?"
end until prompt.ask(s)=='n'
puts "Thanks for playing"
