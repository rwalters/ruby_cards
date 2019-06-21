require 'cards/black'
require 'cards/white'

class Cards
  def self.call
    new.call
  end

  def call
    output = Cards::Black.random
    output = output.sub(/_____/, "**#{Cards::White.random.chop}**")

    output
  end
end
