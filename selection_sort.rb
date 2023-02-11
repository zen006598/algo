def selection_sort(array)
  n = array.length - 1

  n.times do |i|
    min_index = i
    
    ((i + 1)..n).each do |j|
      min_index = j if array[j] < array[min_index]
    end

    array[i], array[min_index] = array[min_index], array[i] if min_index != i
  end
  array
end

data = [10, 30, 27, 7, 33, 15, 40, 50]
selection_sort(data)