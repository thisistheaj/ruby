def fib(n)
  if n < 2
    1
  elsif n >= 2
    return fib(n - 1) + fib(n - 2)
  end
end

i = 0
sum = 0
f = fib(i)
while f < 4000000
  if f % 2 == 0
    sum += f
  end
  i += 1
  f = fib(i)
end

puts sum