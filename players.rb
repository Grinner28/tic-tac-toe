class HumanPlayer
  attr_reader :name
  attr_accessor :symbol

  def initialize
    @name = name
    @symbol = symbol
  end
end

class ComputerPlayer
  attr_accessor :symbol
  def initialize
    @name = 'computer'
    @symbol = @symbol
  end
end