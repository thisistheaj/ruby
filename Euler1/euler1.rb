puts ((1...10000).select{ |i| i % 3 == 0 || i % 5 == 0 }).reduce(:+)
