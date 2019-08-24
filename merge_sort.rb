def merge_sort(ary)
  return ary if ary.length == 1
  left, right = ary.each_slice((ary.length/2.0).round).to_a.map {|half| merge_sort(half)}
  ary = []
  ary << (left[0] < right[0] ? left.shift : right.shift) while left[0] && right[0]
  ary += left + right
end

ex_ary = [1,-1,0,3,2,4,5]
p merge_sort(ex_ary)
