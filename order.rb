def order a
    b = a.sort
    a == b ? :ascending : a == b.reverse ? :descending : 'not sorted'
end

puts order([3, 2, 1])
