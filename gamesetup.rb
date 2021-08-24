require_relative 'board'
require_relative 'players'
require_relative 'messages'

class Game

  attr_reader :player1, :player2, :board, :currentplayer

  include Messages

  def initialize
    @board = Board.new
    @player1 = nil
    @player2 = nil
    @currentplayer = nil
    puts display_how_many_players
    players
    selectfirstplayer
  end

  def players
    case gets.chomp
    when '2'
      @player1 = HumanPlayer.new
      @player2 = HumanPlayer.new
    when '1'
      @player1 = HumanPlayer.new
      @player2 = ComputerPlayer.new
    else
      puts 'Invalid input please try again'
      players
    end
  end

  def selectfirstplayer
    if rand(1..2) == 2
      player1.symbol = 'O'
      player2.symbol = 'X'
      @currentplayer = player2
    else
      @currentplayer = player1
    end
  end
end
game = Game.new

puts game.currentplayer.name

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
