require 'cards/black'
require 'cards/white'

class Cards
  def self.call
    new.call
  end

  def call
    if black =~ /_____/
      black.sub(/_____/, "**#{white}**")
    else
      "#{black}\n  - #{white}"
    end
  end

  private

  def black
    @black ||= Cards::Black.random
  end

  def white
    @white ||= Cards::White.random.chop
  end
end
