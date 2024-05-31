def bubble_sort(array)
  array_length = array.length
  loop do
    swapped = false

      (array_length - 1).times do |current_value|
        if array[current_value] > array[current_value + 1]
          array[current_value], array[current_value + 1] = array[current_value + 1], array[current_value]
          swapped = true
        end
      end

      break unless swapped
    end

p array
end

bubble_sort([4,3,78,2,0,2])