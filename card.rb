class Card
  attr_accessor :rank, :suit
  # attr_reader :rank, :suit

   def initialize(rank, suit)
    @rank = rank
    @suit = suit
   end
end
