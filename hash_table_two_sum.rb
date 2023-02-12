def two_sum(nums, target)
  hash_table = {}
  nums.each_with_index do |num, index|
    if hash_table.has_key?(target - num)
      return [hash_table[target - num], index]
    else
      hash_table[num] = index
    end
  end
end
two_sum([11, 15, 2, 7], 9)