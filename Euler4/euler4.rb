def isPalindrome(s)
  if s == s.reverse
    true
  else
    false
  end
end

a = []
for i in 0..999
  ii = 999-i
  for j in 0..999
    jj = 999 - j
    if isPalindrome((ii*jj).to_s)
      a.push(ii*jj)
      break
    end
  end
end

puts a.max