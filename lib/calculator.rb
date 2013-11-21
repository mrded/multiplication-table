#encoding UTF-8
require 'matrix'

class Calculator
  attr_accessor :prime

  def initialize(prime = [])
    @prime = prime
  end

  def multiply
    length = @prime.length

    Matrix.build(length, length) do |row, column|
      @prime[row] * @prime[column]
    end
  end
end
