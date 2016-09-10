def bubble_sort(array)
  sorted = false

  until sorted == true
    sorted = true
    i = 0

    (array.length - 1).times do |i|
      if array[i] > array[i + 1]
        temp = array[i]
        array[i] = array[i + 1]
        array[i + 1] = temp
        sorted = false
      end
    end
  end

  array
end
