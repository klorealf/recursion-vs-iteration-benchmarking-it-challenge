require 'benchmark'

def factorial_iterative(n)
  (1..n).reduce(1, :*)
end

def factorial_recursive(n)
  return 1 if n < 2
  n * factorial_recursive(n - 1)
end


Benchmark.bm(500) do |x|
  x.report("factorial_iterative for zero") {factorial_iterative(0)}
  x.report("factorial_iterative for one thousand") {factorial_iterative(1000)}
  x.report("factorial_iterative for two thousand") {factorial_iterative(2000)}
  x.report("factorial_iterative for three thousand") {factorial_iterative(3000)}
  x.report("factorial_iterative for four thousand") {factorial_iterative(4000)}
  x.report("factorial_iterative for five thousand") {factorial_iterative(5000)}
end

Benchmark.bm(500) do |x|
  x.report("factorial_recursive for zero") {factorial_recursive(0)}
  x.report("factorial_recursive for one thousand") {factorial_recursive(1000)}
  x.report("factorial_recursive for two thousand") {factorial_recursive(2000)}
  x.report("factorial_recursive for three thousand") {factorial_recursive(3000)}
  x.report("factorial_recursive for four thousand") {factorial_recursive(4000)}
  x.report("factorial_recursive for five thousand") {factorial_recursive(5000)}
end
