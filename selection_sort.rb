#將最小數值暫定為未檢查區第一位，在逐一檢查未檢查區之數值，若是小於最小數字及交換位置，直到結束。
def selection_sort(array)
  arr_length = array.length - 1

  arr_length.times do |i|
    #The first element should be the minimum.
    min_index = i
    
    ((i + 1)..arr_length).each do |index|
      #If smaller than the minimum index, be the new smallest element.
      min_index = index if array[index] < array[min_index]
    end
    # If an element is not the same number, swap the elements.
    array[i], array[min_index] = array[min_index], array[i] if min_index != i
  end
  array
end

data = [10, 30, 27, 7, 33, 15, 40, 50]
selection_sort(data)