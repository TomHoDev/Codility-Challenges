def solution(x, y, d)
  diff = y-x
  if diff % d == 0
    return diff / d
  else
    return (diff / d) + 1
  end
end