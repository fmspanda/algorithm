ary = Array.new(100){ Random.rand(100) }

def quickSort(array)
	return array if array.size <= 1 # 配列の大きさが0か1なら配列をそのまま返す

	pivot = array[0] # 軸を設定
	arr_l = Array.new # 軸より左側の配列
	arr_r = Array.new # 軸より右側の配列

	for i in 1...array.size do
		(array[i] > pivot ? arr_r : arr_l).push(array[i]) # 軸より大きければarr_rそうでなければarr_lに要素を追加
	end

	return quickSort(arr_l) + [pivot] + quickSort(arr_r) # 軸より小さいもののソート + 軸 + 軸より大きいもののソート(再帰)
end

puts quickSort(ary)
