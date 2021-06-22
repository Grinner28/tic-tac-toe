require_relative 'cell.rb'

class Gamegrid < Cell
  attr_reader :gamegrid

  def initialize
    super
    @gamegrid = []
    9.times { @gamegrid.push(Cell.new) }
    p @gamegrid
  end
end


