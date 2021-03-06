# frozen_string_literal: true

# A single card
class Card
  attr_reader :value, :suit

  include Comparable

  @@card_names = %w[Ace 2 3 4 5 6 7 8 9 10 Jack Queen King]

  # Initializes a card with the given value and suit
  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  # Converts the value and suit of the card into a string
  def to_string
    "#{@@card_names[value - 1]} of #{@suit.to_s.capitalize}"
  end

  # Compares cards by their value
  def <=>(other)
    value <=> other.value
  end
end
