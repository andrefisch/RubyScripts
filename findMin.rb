def findMin(arr)
    min = arr[0]
    for x in arr
        if x < min
            min = x
        end
    end
    min
end

puts findMin([1, 2, 3])
puts findMin([3, 4, 0, 5, 6, 7, 1, 2])
