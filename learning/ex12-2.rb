print "How much money would you like to process? "
float = gets.chomp.to_f
smaller = float / 10
puts "10% of #{float} is #{smaller}"
