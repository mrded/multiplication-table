#encoding UTF-8

class Generator
  attr_accessor :count

  def initialize(count = 10)
    @count = count
  end

  def generate
    [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
  end
end
