#encoding UTF-8
Dir["./lib/*.rb"].each {|file| require file}

# Get argument.
count = (ARGV.first.to_i > 0) ? ARGV.first.to_i : 10

prime = Generator.new(count).generate
matrix = Calculator.new(prime).multiply

Printer.new(matrix).table
