#encoding UTF-8
require 'calculator'
require 'matrix'

describe Calculator do

  it "Multiply an array of primes." do
    primes = [2, 3, 5, 7]
    matrix = Matrix[
      [4, 6, 10, 14],
      [6, 9, 15, 21],
      [10, 15, 25, 35],
      [14, 21, 35, 49],
    ]
    Calculator.new(primes).multiply.should eq matrix
  end

end