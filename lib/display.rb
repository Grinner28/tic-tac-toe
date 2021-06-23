require_relative 'grid'

class Display < Board
  attr_accessor :display_array
  def initialize  
    @display_array = Board.new
  end
end

display = Display.new

puts display.display_array.board[1][1]
