n = 600851475143

def is_prime(n)
  (2...n).each do |i|
    if n % i == 0
      return false
    end
  end
     true
end

i = 2
while true
  if n % i == 0
    m = n / i
    if is_prime(m)
      puts m
      break
    end
  end
  i += 1
end

