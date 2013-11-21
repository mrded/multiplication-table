#encoding UTF-8

class Calculator
  require 'matrix'

  attr_accessor :primes, :matrix

  def initialize(options = {})
    @primes = options[:primes]
  end

  def multiply
    length = @primes.length

    @matrix = Matrix.build(length, length) do |row, column|
      @primes[row] * @primes[column]
    end
  end
end
