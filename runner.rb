require 'benchmark'
require_relative 'factorial'
require_relative 'fibonacci'

i = 0
while i <= 5000
  puts "The Iterative Factorial: #{i}"
  puts Benchmark.measure{factorial_iterative(i) * 500}

  puts "The Recursive Factorial: #{i}"
  puts Benchmark.measure{factorial_recursive(i) * 500}
  i += 1000
end


x = 0
while x <= 30
  puts "The Iterative Fibonacci: #{x}"
  puts Benchmark.measure{iterative_nth_fibonacci_number(x) * 500}

  puts "The Recursive Fibonacci: #{x}"
  puts Benchmark.measure{recursive_nth_fibonacci_number(x) * 500}
  x += 10
end

