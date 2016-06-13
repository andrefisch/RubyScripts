# Bubble sort
# mark b
def bubble_sort array
    l = array.length
    loop do
        swapped = false

        (l - 1).times do |i|
            if array[i] > array[i + 1]
                array[i], array[i + 1] = array[i + 1], array[i]
                swapped = true
            end
        end

        break if not swapped

    end
end

# Selection Sort
# mark s
def selection_sort array
    n = array.size - 1

    n.times do |i|
        index_min = i

        (i + 1).upto(n) do |j|
            index_min = j if array[j] < array[index_min]
        end

        array[i], array[index_min] = array[index_min], array[i] if index_min != i
    end
end



array = []
array << 0
array << 7
array << 6
array << 5
array << 4
array << 8
array << 2
array << 9
array << 3
array << 1

print array
print "\n"

selection_sort(array)

print array
print "\n"
