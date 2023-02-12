def shell_sort(array)
  length = array.length
  gap = length / 2

  #The gap value eventually becomes 1.
  while gap > 0
    (gap...length).each do |index|
      element = array[index]

      while index >= gap && array[index - gap] > element
        array[index] = array[index - gap]
        index -= gap
      end
      array[index] = element
    end
    gap /= 2
  end
  array
end

data = [64, 20, 50, 33, 72, 10, 23, -1, 4]
shell_sort(data)