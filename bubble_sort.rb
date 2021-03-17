def bubble_sort(array)
  is_sorted = false
  until is_sorted
    j = 0
    count = 0
    is_sorted = true
    while j < array.length - 1 - count
      temp = array[j] - array[j + 1]
      if temp.positive?
        array[j], array[j + 1] = array[j + 1], array[j]
        is_sorted = false
        p array
      end
      j += 1
    end
    count += 1
  end
  array
end

list = [4, 3, 78, 2, 0, 2]

bubble_sort(list)
