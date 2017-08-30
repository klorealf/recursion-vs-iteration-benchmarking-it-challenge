require_relative 'factorial'
require_relative 'fibonacci'

require 'benchmark'

# n = 500
#   Benchmark.bm do |times|
#   times.report {1.upto(n) do ; factorial_iterative(0); end}
#   times.report {1.upto(n) do ; factorial_iterative(1000); end}
#   times.report {1.upto(n) do ; factorial_iterative(2000); end}
#   times.report {1.upto(n) do ; factorial_iterative(3000); end}
#   times.report {1.upto(n) do ; factorial_iterative(4000); end}
#   times.report {1.upto(n) do ; factorial_iterative(5000); end}
#   times.report {1.upto(n) do ; factorial_iterative(10000); end}
# end

# n = 500
#   Benchmark.bm do |times|
#   times.report {1.upto(n) do ; factorial_recursive(0); end}
#   times.report {1.upto(n) do ; factorial_recursive(1000); end}
#   times.report {1.upto(n) do ; factorial_recursive(2000); end}
#   times.report {1.upto(n) do ; factorial_recursive(3000); end}
#   times.report {1.upto(n) do ; factorial_recursive(4000); end}
#   times.report {1.upto(n) do ; factorial_recursive(5000); end}
#   times.report {1.upto(n) do ; factorial_recursive(10000); end}
# end

n = 500
  Benchmark.bm do |times|
  times.report {1.upto(n) do ;iterative_nth_fibonacci_number(0); end}
  times.report {1.upto(n) do ; iterative_nth_fibonacci_number(5); end}
  times.report {1.upto(n) do ; iterative_nth_fibonacci_number(10); end}
  times.report {1.upto(n) do ; iterative_nth_fibonacci_number(15); end}
  times.report {1.upto(n) do ; iterative_nth_fibonacci_number(20); end}
  times.report {1.upto(n) do ; iterative_nth_fibonacci_number(25); end}
  times.report {1.upto(n) do ; iterative_nth_fibonacci_number(30); end}
  # times.report {1.upto(n) do ; iterative_nth_fibonacci_number(35); end}
end

n = 500
  Benchmark.bm do |times|
  times.report {1.upto(n) do ; recursive_nth_fibonacci_number(0); end}
  times.report {1.upto(n) do ; recursive_nth_fibonacci_number(5); end}
  times.report {1.upto(n) do ; recursive_nth_fibonacci_number(10); end}
  times.report {1.upto(n) do ; recursive_nth_fibonacci_number(15); end}
  times.report {1.upto(n) do ; recursive_nth_fibonacci_number(20); end}
  times.report {1.upto(n) do ; recursive_nth_fibonacci_number(25); end}
  times.report {1.upto(n) do ; recursive_nth_fibonacci_number(30); end}
  # times.report {1.upto(n) do ; recursive_nth_fibonacci_number(35); end}
end


