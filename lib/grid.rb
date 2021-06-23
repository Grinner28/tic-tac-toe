require_relative 'cell'

class Board < Cell
  attr_accessor :board

  def initialize
    @board = Array.new(3) { Array.new(3) { Cell.new } }
  end
end


