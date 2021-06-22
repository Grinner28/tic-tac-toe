require_relative 'cell.rb'

class Gameboard < Cell
  def initialize
    @gameboard = []
    9.times { @gameboard.push(Cell.new) }
    p @gameboard
  end
end

match = Gameboard.new
