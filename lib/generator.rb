#encoding UTF-8

class Generator
  attr_accessor :count

  def initialize(count = 10)
    @count = count
  end

  def generate
    (1..29).select do |x| # 29 is 10th one.
      (1..x).select{ |y| x%y == 0 }.size == 2
    end
  end
end
