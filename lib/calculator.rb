#encoding UTF-8
require 'matrix'

class Calculator
  attr_accessor :primes

  def initialize(options = {})
    @primes = options[:primes]
  end

  def multiply
    length = @primes.length

    Matrix.build(length, length) do |row, column|
      @primes[row] * @primes[column]
    end
  end
end
