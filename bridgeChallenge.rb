def Bridge t    
    n = t.size
    r,p = t.sort!
    t.pop + r + (n < 3 ? -r : n < 4 ? p : [r + t.pop, 2*p].min + Bridge(t))
end

puts Bridge([1, 2, 5, 10])
