def bubble_sort_by(array)
  is_sorted = false
  until is_sorted do
    i = 0
    is_sorted = true
    while i < array.length - 1 do
      if yield(array[i], array[i + 1]).positive?
        array[i], array[i + 1] = array[i + 1], array[i]
        is_sorted = false
      end
      i += 1
    end
  end
  array
end

list = ["hi","hello","hey"]
  
bubble_sort_by(list) do |left, right|
  left.length - right.length
end