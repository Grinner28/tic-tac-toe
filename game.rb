require_relative 'board'
require_relative 'players'
require_relative 'messages'

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
    until check_for_game_end
      move
      switch_current_player
    end
    newgame
  end

  def move
    puts display_current_player
    puts display_select
    selection = gets.chomp.to_i - 1
    check_if_move_valid(selection)
  end

  def check_if_move_valid(selection)
    if selection >= 9 || selection.negative?
      puts display_invalid_input
    elsif !board.board_array[selection].is_a?(Integer)
      puts display_select_error
    else
      update_board(selection)
    end
  end

  def update_board(selection)
    board.board_array[selection] = currentplayer.symbol
    puts board.display_board
  end

  def switch_current_player
    if @currentplayer == player1
      @currentplayer = player2
    else
      @currentplayer = player1
    end
  end

  def check_for_game_end
    if board.win.any? { |state| [board.board_array[state[0]], board.board_array[state[1]], board.board_array[state[2]]].uniq.length == 1 }
      puts display_win
      true
    elsif board.board_array.uniq.length == 2
      puts display_tie
      true
    else
      false
    end
  end

  def newgame
    puts display_playagain
    case gets.chomp.downcase
    when 'yes'
      Game.new
    when 'no'
      puts 'Goodbye'
    else
      puts display_invalid_input
      newgame
    end
  end
end

Game.new
