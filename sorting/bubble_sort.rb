def bubble_sort(array)
  array_length = array.length
  return array if array_length <= 1
  unsorted_until_index = array_length - 1
  sorted = false
  until sorted
    sorted = true
    for i in (0..unsorted_until_index)
      if array[i+1]
        if array[i] > array[i+1]
          array[i], array[i+1] = array[i+1], array[i]
          sorted = false
        end
      end
    end
    unsorted_until_index -= 1
  end
  return array
end

if $0 == __FILE__
  puts 'Enter a list of numbers separated by space'

  list = gets
  bubble_sort(list)
  print list
end
