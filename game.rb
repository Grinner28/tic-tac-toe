require_relative 'board'
require_relative 'players'
require_relative 'messages'
require 'pry-byebug'
class Game
  attr_reader :player1, :player2, :board, :currentplayer, :selection

  include Messages

  def initialize
    puts display_intro
    @player1 = nil
    @player2 = nil
    @currentplayer = nil
    setup_players
    select_first_player
    @board = Board.new
    playgame
  end

  def setup_players
    puts display_how_many_players
    case gets.chomp
    when '2'
      @player1 = HumanPlayer.new
      @player2 = HumanPlayer.new
    when '1'
      @player1 = HumanPlayer.new
      @player2 = ComputerPlayer.new
    else
      puts display_invalid_input
      setup_players
    end
  end

  def select_first_player
    if rand(1..2) == 2
      player1.symbol = 'O'
      player2.symbol = 'X'
      @currentplayer = player2
    else
      player1.symbol = 'X'
      player2.symbol = 'O'
      @currentplayer = player1
    end
  end

  def playgame
    move
  end

  def move
    puts display_current_player
    puts display_select
    selection = gets.chomp.to_i - 1
    check_if_move_valid(selection)
  end

  def check_if_move_valid(selection)

    binding.pry
    
    case selection
    when selection >= 9 || selection.negative?
      puts display_invalid_input
    when !board.board_array[selection].is_a?(Integer)
      puts display_select_error
    else
      puts 'Selection valid'
      move
    end
  end
end

Game.new

# Playing the game
# Promt current player to please select an available space by entering a number corresponding to that square
# Check that space is not already occupied
# if so request a differnt space
# if not assign symbol of current player to that space in the board array
# refersh board display show update game state
# if round is >= 5 check if the selection is a winning selection
# if round is <5 change current player to other player
# if so indicate that current player is the winner
# promt for a rematch
# if no winner check if round == 10 and promt that match is a tie
# promt for a rematch
# if not switch current player to other player and continue game

#Checking for a winner
# A player wins by owning 3 spaces that form a line, inclduing diagonals  
