require_relative 'messages'

class HumanPlayer
  attr_reader :name
  attr_accessor :symbol

  include Messages

  def initialize
    puts display_ask_name
    @name = gets.chomp
    @symbol = ''
  end
end

class ComputerPlayer
  attr_reader :name
  attr_accessor :symbol, :moves

  def initialize
    @name = 'computer'
    @symbol = ''
    @moves = [4, 0, 8, 2, 6, 3, 5, 1, 7]
  end
end
