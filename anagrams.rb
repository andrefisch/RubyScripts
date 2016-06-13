def anagrams?(str, check)
    # Our truth marker
    anagrams = false
    # Make a letter counting table for each
    strTable = Array.new(26, 0)
    checkTable = Array.new(26, 0)
    # Split the two into arrays
    strChars = str.split('')
    checkChars = check.split('')
    for x in strChars
        charNum = x[0].ord - 97
        strTable[charNum] += 1
    end
    for x in checkChars
        charNum = x[0].ord - 97
        checkTable[charNum] += 1
    end
    strTable.uniq.sort == checkTable.uniq.sort
end

puts anagrams?("iceman", "cinema")
puts anagrams?("icemen", "cinema")
