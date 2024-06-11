# Build a method #bubble_sort that takes an array and returns a sorted array.
# It must use the bubble sort methodology (using #sort would be pretty pointless, wouldn’t it?).

# > bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]

def bubble_sort(array)
  n = array.length
  loop do
    swapped = false
    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i] # swap elements
        swapped = true
      end
    end
    break unless swapped # exit loop if no swaps were made
  end
  array
end

# Example usage:
puts bubble_sort([4,3,78,2,0,2]).inspect
# Output: [0, 2, 2, 3, 4, 78]



