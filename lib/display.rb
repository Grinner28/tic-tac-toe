require_relative 'grid'

class Display < Gamegrid
  def initialize  
  @display_array = @gamegrid
  puts @display_array
  end
end

test = Gamegrid.new
display = Display.new

