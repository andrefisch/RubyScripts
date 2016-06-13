def birthdays d
    Math.sqrt(Math.log(-.5,Math::E) * 2 * d)
end

puts birthdays 365

=begin

1 - e ^ ( ( n ^ 2 ) / 2 d) = p

e ^ ( ( n ^ 2 ) / 2 d) = - p + 1

ln (p + 1) = ( ( n ^ 2 ) / 2 d)

sqrt (ln (p + 1) * 2 * d) = n

=end
