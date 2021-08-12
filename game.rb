class Board
  attr_accessor :board

  def initialize
    @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def display_board
    puts  " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts  '-----------'
    puts  " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts  '-----------'
    puts  " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
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

class Player
  attr_reader :name
  attr_accessor :symbol

  def initialize
    puts 'Please enter your name'
    @name = gets.chomp
    @symbol = ''
  end
end

class ComputerPlayer
  attr_accessor :symbol

  def initialize
    @symbol = ''
  end
end

game = Board.new
game.display_board
me = PlayerOne.new
puts "Hi #{me.name}!"
