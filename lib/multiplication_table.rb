#encoding UTF-8

class MultiplicationTable
  require_relative 'generator'
  require_relative 'calculator'
  require_relative 'printer'

  attr_accessor :count, :primes, :matrix

  def initialize(count = 10)
    @count = count
    @primes = Generator.new(count: @count).generate
    @matrix = Calculator.new(primes: @primes).multiply
  end

  def print
    Printer.new(matrix: @matrix, primes: @primes).table
  end
end
