#encoding UTF-8
require './lib/multiplication_table'

# Get argument.
count = (ARGV.first.to_i > 0) ? ARGV.first.to_i : 10

MultiplicationTable.new(count: count).print
