def insert(array, right_index, value)
    i = right_index
    while(i >= 0 && array[i] > value)
        array[i+1] = array[i]
        i -= 1
    end

  array[i+1] = value;
end

def insertion_sort(array)
  sorted_arr = [array[0]]
  array.shift

  loop do
    break if array.empty?
    value = array.shift
    right_index = sorted_arr.length - 1
    sorted_arr = insert(sorted_arr, right_index, value)
  end

    sorted_arr
end

puts insertion_sort([2, 3, 7, 1])
