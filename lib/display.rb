require_relative 'grid'

class Display < Gamegrid
  def initialize  
  @display_array = Gamegrid.new
  end
end

display = Display.new
puts display
p display

puts display.board.fetch(1)
