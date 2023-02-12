def insertion_sort(array)
  (1...array.length).each do |i|
    current_el = array[i]
    previous_index = i - 1

    while previous_index >= 0 && array[previous_index] > current_el
      array[previous_index + 1] = array[previous_index]
      previous_index -= 1
    end
    array[previous_index + 1] = current_el
  end
  array
end

data = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5]
insertion_sort(data)