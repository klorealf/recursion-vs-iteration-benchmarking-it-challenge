require_relative 'factorial'
require_relative 'fibonacci'
require 'Benchmark'

# Release 0
# puts Benchmark.measure {factorial_iterative(0)}
# puts Benchmark.measure {factorial_recursive(0)}
# puts "*" * 40
# puts Benchmark.measure {factorial_iterative(1000)}
# puts Benchmark.measure {factorial_recursive(1000)}
# puts "*" * 40
# puts Benchmark.measure {factorial_iterative(2000)}
# puts Benchmark.measure {factorial_recursive(2000)}
# puts "*" * 40
# puts Benchmark.measure {factorial_iterative(3000)}
# puts Benchmark.measure {factorial_recursive(3000)}
# puts "*" * 40
# puts Benchmark.measure {factorial_iterative(4000)}
# puts Benchmark.measure {factorial_recursive(4000)}
# puts "*" * 40
# puts Benchmark.measure {factorial_iterative(5000)}
# puts Benchmark.measure {factorial_recursive(5000)}


# Release 1
def benchmark
  Benchmark.measure {
    500.times do
    yield
  end
  }
end

puts "iterative"
puts benchmark {factorial_iterative(0)}
puts "*" * 40
puts benchmark {factorial_iterative(5)}
puts "*" * 40
puts benchmark {factorial_iterative(10)}
puts "*" * 40
puts benchmark {factorial_iterative(15)}
puts "*" * 40
puts benchmark {factorial_iterative(20)}
puts "*" * 40
puts benchmark {factorial_iterative(25)}
puts "*" * 40
puts benchmark {factorial_iterative(30)}

puts " " * 40
puts "*" * 40
puts "recursive"
puts benchmark {factorial_recursive(0)}
puts "*" * 40
puts benchmark {factorial_recursive(5)}
puts "*" * 40
puts benchmark {factorial_recursive(10)}
puts "*" * 40
puts benchmark {factorial_recursive(15)}
puts "*" * 40
puts benchmark {factorial_recursive(20)}
puts "*" * 40
puts benchmark {factorial_recursive(25)}
puts "*" * 40
puts benchmark {factorial_recursive(30)}

