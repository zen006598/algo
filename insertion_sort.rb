def insertion_sort(array)
  (1...array.length).each do |i|
    key = array[i]
    j = i - 1

    while j >= 0 && array[j] > key
      array[j + 1] = array[j]
      j -= 1
    end
    array[j + 1] = key
  end
  array
end

data = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5]
insertion_sort(data)