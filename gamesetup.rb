require_relative 'board'
require_relative 'players'
require_relative 'messages'

class Setup
  include Messages
  def initialize
    Board.new
    create_players
  end

  def create_players
    puts display_how_many_players
    case gets.chomp 
    when '2'
      puts display_ask_name
      HumanPlayer.new
      puts display_ask_name
      HumanPlayer.new
    when '1'
      puts display_ask_name
      HumanPlayer.new
      ComputerPlayer.new
    else
      puts 'Invalid input please try again'
      create_players
    end
  end
end

Setup.new

# Inital setup
# Display a welcome message
# Ask if game will be 1 or 2 human players?
# If 2 players
#    Prompt please enter player 1s name and create player with said name
#    Prompt please enter player 2s name and create player with said name

# If 1 human player
#   Prompt please enter your name and create player with said name
#   Create computer player

# Assigning first and second player
#    Randomly select who will go first
#    Assign first player the symbol X
#    Assign second player the symbol O
#    Set first as current player
