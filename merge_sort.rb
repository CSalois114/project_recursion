def merge_sort(ary)
  return ary if ary.length == 1

  left, right = ary.each_slice((ary.length/2.0).round).to_a.each{|ary| merge_sort(ary)}
  sorted_ary = []
  sorted_ary << ( left[0] < right[0] ?  left.shift : right.shift ) while left[0] && right[0]
  sorted_ary += left + right
end

