'''
If two chemicals are in the form X(a)Y(b) and Z(c)T(d) this method returns two new compounds in the form of Z(c)Y(b) and X(a)T(d) with lowest possible coefficients
'''
def chemistry f, s
    puts "First compound: " + f
    puts "Second compound: " + s
    f =~ r = /#{'(\w+)\((\d+)\)'*2}/
    puts "Regex match: " + f
    puts r
    a = $1
    puts "First group: " + $1
    b = eval $2
    puts "Second group: " + $2
    c = $3
    puts "Third group: " + $3
    d = eval $4
    puts "Fourth group: " + $4
    r =~ s
    puts "Regex match: " + s
    puts r
    t = "%s(%s)" * 2
    puts "what even is t? " + t
    x = d.gcd n = $2.to_i
    puts "gcd for first new compund " + x.to_s
    y = b.gcd m = $4.to_i
    puts "gcd for second new compund " + y.to_s
    [t %[$1, n / x, c, d / x], t %[a, b / y, $3, m / y]]
end

puts chemistry("Ba(1)Cl(2)", "H(2)SO4(1)")
