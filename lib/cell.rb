class Cell

  attr_accessor :spacenumber

  @@spacenumber = 0
  def initialize()
      @spacenumber = @@spacenumber
      @@spacenumber += 1 
  end
end