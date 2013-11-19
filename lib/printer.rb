#encoding UTF-8

class Printer
  attr_accessor :matrix

  def initialize(matrix = [])
    @matrix = matrix
  end

  def table
    @matrix.each do |row|
      p row
    end
  end
end
