#Warmup: Fionacci

#Fibonacci - NOT RECURSIVE
def fib(n)
  return array if n == 0 || n == 1
  array = [0,1]
  (2..n).each do |x|
    array << array[x-2] + array[x-1]
  end
  print "#{array}\n"
end

fib(5)
fib(10)


#RECURSIVE
#This method just shows the last digit of the fibonacci sequence.
def fibs_rec(n)
  return 0 if n == 0
  return 1 if n == 1
  fibs_rec(n-1) + fibs_rec(n-2)
end

puts fibs_rec(5)
puts fibs_rec(10)


#This shows an array
#Shows the previous numbers
def fibs_recursive(n, arr = [0,1])
  return arr if n <= 1
  return arr if arr.length > n
  fibs_recursive(n, (arr << arr[-1] + arr[-2]))
end

print fibs_recursive(5)
