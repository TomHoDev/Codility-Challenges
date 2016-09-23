def solution(a)
  min_diff = 2000
  length = a.length
  left_sum = a.shift
  right_sum = a.inject(0, :+)
  
  i=0
  while i < length-1
    diff = (left_sum - right_sum).abs
    if diff < min_diff 
      min_diff = diff
    end
    left_sum += a[i]
    right_sum -= a[i]
    i += 1
  end
  return min_diff
end