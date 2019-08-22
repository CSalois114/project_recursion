def fibs(n)
  n > 0 ? i = [0, 1] : i = []
  n.times {i << i[-1] + i[-2]}
  i[0..n-1]
end 
  
def fibs_rec(n, ans=[0,1]) 
  return ans[0...n] if n <= 2
  fibs_rec(n - 1, ans)
  ans << ans[-1] + ans[-2]
end
  
  
  
test_nums= [0,1,5,10]
test_nums.each do |num|
  p "fibs     = #{fibs(num)}"
  p "fibs_rec = #{fibs_rec(num)}"
end