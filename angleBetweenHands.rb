def angleBetweenHands(hours, minutes)
    # Make sure we mod 360 both angles so we end up with 0 instead of 360 for 12 hours and 60 minutes
    minuteAngle = (minutes * 6) % 360
    hourAngle = (hours * 30 + minutes / 2) % 360
    puts "angle of hour hand at #{hours} hours is #{hourAngle}"
    puts "angle of minute hand at #{minutes} minutes is #{minuteAngle}"
    (minuteAngle - hourAngle).abs
end

puts angleBetweenHands(12, 0)
puts angleBetweenHands(1, 20)
puts angleBetweenHands(3, 27)
