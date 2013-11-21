#encoding UTF-8
require 'generator'

describe Generator do

  it "Generate an array of primes." do
    Generator.new(10).generate.should eq [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
  end

end