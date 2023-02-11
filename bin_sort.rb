require 'rails'
 
DEFAULT_BUCKET_SIZE = 5
 
def bin_sort(array, bin_size = DEFAULT_BUCKET_SIZE)
  return array if array.empty?
  bin_count = ((array.max - array.min) / bin_size).floor + 1

  # create bin
  bin = []
  bin_count.times { bin.push [] }

  # fill bin
  array.each do |item|
    bin[((item - array.min) / bin_size).floor].push(item)
  end

  # sort bin
  bin.each do |bucket|
    bucket.sort!
  end

  bin.flatten
end
list = [9, 15, 12, 23, 33, 26, 7, 31, 42, 36]
p bin_sort(list)