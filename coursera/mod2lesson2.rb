arr = (1..10000).to_a.select{ |i| i % 3 == 0 and i >= 5000 }.sort.reverse

print arr
