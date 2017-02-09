

class Card
  attr_accessor :suit, :value, :face
  def initialize
    @suit   = suit
    @value  = value
    @face   = face
  end

  def < (other)
    self.value < other.value
  end

  def > (other)
    self.value > other.value
  end

  def == (my,other)
    self.value == other.value
  end

end
