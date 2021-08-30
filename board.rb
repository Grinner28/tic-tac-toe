require_relative 'messages'

class Board
  attr_accessor :board_array, :win_states

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
    win_states = [[0, 1, 2],
            [0, 3, 6],
            [0, 4, 8],
            [1, 4, 7],
            [2, 5, 8],
            [2, 4, 6],
            [3, 4, 5],
            [6, 7, 8]]
  end
end
