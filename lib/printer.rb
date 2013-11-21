#encoding UTF-8

class String
  def colorize
    "\033[44m#{self}\033[0m"
  end
end

class Printer
  def initialize(options = {})
    @matrix = options[:matrix]
    @primes = options[:primes]
  end

  def table
    puts "\t#{@primes.join("\t")}".colorize

    @matrix.to_a.each_with_index do |row, key|
      puts "#{@primes[key]}\t".colorize + "#{row.join("\t")}"
    end
  end
end
