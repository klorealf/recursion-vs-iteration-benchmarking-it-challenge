

def factorial_iterative(n)
  (1..n).reduce(1, :*)
end

def factorial_recursive(n)
  return 1 if n < 2
  n * factorial_recursive(n - 1)
end

p factorial_iterative(0)

p factorial_iterative(1000)


# array = [0, 1000, 2000, 3000, 4000, 5000]

# 500.times do
#  array.each do |number|
#     p result =  factorial_iterative(number)
#   end
# end



