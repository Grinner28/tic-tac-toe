require_relative 'messages'

class Board
  attr_accessor :board_array

  include Messages
  def initialize
    @board_array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    display_board
  end

  def display_board
    puts
    puts  "     #{@board_array[0]} | #{@board_array[1]} | #{@board_array[2]} "
    puts  '   -------------'
    puts  "     #{@board_array[3]} | #{@board_array[4]} | #{@board_array[5]} "
    puts  '   -------------'
    puts  "     #{@board_array[6]} | #{@board_array[7]} | #{@board_array[8]} "
    puts
  end

  def win
    @win = [[0, 1, 2],
            [0, 3, 6],
            [0, 4, 8],
            [1, 4, 7],
            [2, 5, 8],
            [2, 4, 6],
            [3, 4, 5],
            [6, 7, 8]]
  end
end

class Move
  attr_reader :selection

  include Messages

  def initialize(selection)
    puts display_current_player
    puts display_select
    @selection = gets.chomp.to_i - 1
    check_if_selection_valid
  end

  def check_if_selection_valid
    case selection
    when selection > 8 || selection.negitive?
      puts display_invalid_input
      player_selection
    when !board.board_array[selection].is_a?(Integer)
      puts display_select_error
      player_selection
    else
      add_selection_to_grid
    end
  end
end
