class HumanPlayer
  attr_reader :name, :player_number
  attr_accessor :symbol

  @@number_of_players = 1
  def initialize()
    @name = gets.chomp
    @symbol = symbol
    @player_number = @@number_of_players
    @@number_of_players +=1
  end
end

class ComputerPlayer
  attr_accessor :symbol

  def initialize
    @name = 'computer'
    @symbol = symbol
  end
end
