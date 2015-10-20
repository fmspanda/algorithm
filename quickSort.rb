ary = Array.new(100){ Random.rand(100) }

def quickSort(array)
	return array if array.size <= 1

	pvt = array[0]
	arr_l = Array.new
	arr_r = Array.new

	for i in 1...array.size do
		(array[i] > pvt ? arr_r : arr_l).push(array[i])
	end

	arr_r = quickSort(arr_r)
	arr_l = quickSort(arr_l)

	return arr_l + [pvt] + arr_r
end

puts quickSort(ary)
