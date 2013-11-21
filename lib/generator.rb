#encoding UTF-8

class Generator
  attr_accessor :count

  def initialize(options = {})
    @count = options[:count]
  end

  def generate
    i = 1
    output = []

    until output.length >= @count
      output << i if is_prime? i
      i += 1
    end

    output
  end

  def is_prime?(number)
    (1..number).select{ |y| number % y == 0 }.size == 2
  end
end
