#encoding UTF-8
Dir["./lib/*.rb"].each {|file| require file}

# Get argument.
count = (ARGV.first.to_i > 0) ? ARGV.first.to_i : 10

primes = Generator.new(count: count).generate
matrix = Calculator.new(primes: primes).multiply

Printer.new(matrix: matrix, primes: primes).table
