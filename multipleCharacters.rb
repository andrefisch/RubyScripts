# Implement an algorithm to determine if a string has all unique characters

def multipleCharacters?(str)
    multiples = false
    # Capitalize the string 
    str.downcase!
    # Create a table where we can count instances
    table = Array.new(26, 0)
    chars = str.split('')
    for x in chars
        charNum = x[0].ord - 97
        table[charNum] += 1
        if (table[charNum] > 1)
            multiples = true
            break
        end
    end
    multiples
end

puts multipleCharacters?("Alphabet")
puts multipleCharacters?("Racing")
puts multipleCharacters?("qwertyuiopasdfghjklzxcvbnm")
