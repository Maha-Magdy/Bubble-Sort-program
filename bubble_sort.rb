def bubble_sort(array)
  is_sorted = false
  until is_sorted
    j = 0
    is_sorted = true
    while j < array.length - 1
      if array[j] >= array [j + 1]
        array [j], array[j + 1] = array[j + 1], array[j]
        is_sorted = false
      end
      j += 1
    end
  end
  array
end

list = [4, 3, 78, 2, 0, 2]

bubble_sort(list)
