def antWalking n
    r = [*1..n].combination(n / 2).count**2
    g = r.gcd d = 4**n
    [r / g, d / g]
end
