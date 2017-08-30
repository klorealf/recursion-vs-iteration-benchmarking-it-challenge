require 'benchmark'

def iterative_nth_fibonacci_number(n)
  sequence = [0, 1]

  until sequence[n]
    sequence << sequence.last(2).reduce(:+)
  end

  sequence[n]
end

def recursive_nth_fibonacci_number(n)
  return 0 if n == 0
  return 1 if n <= 2

  recursive_nth_fibonacci_number(n - 1) + recursive_nth_fibonacci_number(n - 2)
end

Benchmark.bm(500) do |x|
  x.report("iterative_nth_fibonacci_number for zero") {iterative_nth_fibonacci_number(0)}
  x.report("iterative_nth_fibonacci_number for one thousand") {iterative_nth_fibonacci_number(1000)}
  x.report("iterative_nth_fibonacci_number for two thousand") {iterative_nth_fibonacci_number(2000)}
  x.report("iterative_nth_fibonacci_number for three thousand") {iterative_nth_fibonacci_number(3000)}
  x.report("iterative_nth_fibonacci_number for four thousand") {iterative_nth_fibonacci_number(4000)}
  x.report("iterative_nth_fibonacci_number for five thousand") {iterative_nth_fibonacci_number(5000)}
end

Benchmark.bm(500) do |x|
  x.report("recursive_nth_fibonacci_number for zero") {recursive_nth_fibonacci_number(0)}
  x.report("recursive_nth_fibonacci_number for one thousand") {recursive_nth_fibonacci_number(1000)}
  x.report("recursive_nth_fibonacci_number for two thousand") {recursive_nth_fibonacci_number(2000)}
  x.report("recursive_nth_fibonacci_number for three thousand") {recursive_nth_fibonacci_number(3000)}
  x.report("recursive_nth_fibonacci_number for four thousand") {recursive_nth_fibonacci_number(4000)}
  x.report("recursive_nth_fibonacci_number for five thousand") {recursive_nth_fibonacci_number(5000)}
end
