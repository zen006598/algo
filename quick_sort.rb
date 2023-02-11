# def quick_sort(array)
#   return array if array.length <= 1

#   pivot = array.pop
#   less, greater = array.partition { |x| x <= pivot }

#   quick_sort(less) + [pivot] + quick_sort(greater)
# end

def quick_sort(array, left = 0, right = array.length - 1)
  return array if left >= right

  pivot_index = rand(left..right)
  pivot_index = partition(array, left, right, pivot_index)
  quick_sort(array, left, pivot_index - 1)
  quick_sort(array, pivot_index + 1, right)

  array
end

def partition(array, left, right, pivot_index)
  pivot = array[pivot_index]

  array[pivot_index], array[right] = array[right], array[pivot_index]
  store_index = left

  (left...right).each do |i|
    if array[i] < pivot
      array[store_index], array[i] = array[i], array[store_index]
      store_index += 1
    end
  end

  array[right], array[store_index] = array[store_index], array[right]
  store_index
end


arr = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5]
quick_sort(arr)



