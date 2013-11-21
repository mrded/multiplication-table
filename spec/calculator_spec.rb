#encoding UTF-8
require 'calculator'

describe Calculator do

  it "Multiply an array of primes." do
    primes = [2, 3, 5, 7]
    matrix = [
      [nil, 2, 3, 5, 7],
      [2, 4, 6, 10, 14],
      [3, 6, 9, 15, 21],
      [5, 10, 15, 25, 35],
      [7, 14, 21, 35, 49],
    ]
    Calculator.new(primes).multiply.should eq matrix
  end

end