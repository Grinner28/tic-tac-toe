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
  attr_accessor :symbol

  def initialize
    @name = 'computer'
    @symbol = ''
  end
end
