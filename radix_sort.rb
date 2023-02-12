def radix_sort(list)
  # 找出最大位數
	maxLen = list.max_by(&:size)
	maxLen.times do |j|
		buckets=(0..9).map{ [] }
		list.each do |i|
			buckets[i.to_s[-j - 1].to_i] << i
		end
		list = buckets.select{|i| !i.empty? }.reduce(:+)
	end
	list
end

nums = 20.times.map{ rand 100 }
radix_sort(nums)