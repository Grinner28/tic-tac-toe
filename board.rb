require_relative 'messages'

class Board
  attr_accessor :board

  include Messages
  def initialize
    @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    puts display_intro
    display_board
  end

  def display_board
    puts
    puts  "     #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts  '   -------------'
    puts  "     #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts  '   -------------'
    puts  "     #{@board[6]} | #{@board[7]} | #{@board[8]} "
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
