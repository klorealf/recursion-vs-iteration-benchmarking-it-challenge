require_relative 'factorial'
require_relative 'fibonacci'
require 'benchmark'

i=0
while i <= 5000
  puts "Iterative: #{i}"
  puts Benchmark.measure {factorial_iterative(i)* 500 }

  puts "Recursive: #{i}"
  puts Benchmark.measure {factorial_iterative(i)* 500 }
  i += 1000
end
