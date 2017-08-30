require 'benchmark'

def factorial_iterative(n)
  (1..n).reduce(1, :*)
end
# puts Benchmark.measure {factorial_iterative(0) * 500 }

def factorial_recursive(n)
  return 1 if n < 2
  n * factorial_recursive(n - 1)
end
#Iterative
puts Benchmark.measure {factorial_iterative(0) * 500}
puts Benchmark.measure {factorial_iterative(1000) * 500}
puts Benchmark.measure {factorial_iterative(2000) * 500}
puts Benchmark.measure {factorial_iterative(3000) * 500}
puts Benchmark.measure {factorial_iterative(4000) * 500}
puts Benchmark.measure {factorial_iterative(5000) * 500}

#Recursive
puts Benchmark.measure {factorial_recursive(0) * 500}
puts Benchmark.measure {factorial_recursive(1000) * 500}
puts Benchmark.measure {factorial_recursive(2000) * 500}
puts Benchmark.measure {factorial_recursive(3000) * 500}
puts Benchmark.measure {factorial_recursive(4000) * 500}
puts Benchmark.measure {factorial_recursive(5000) * 500}
