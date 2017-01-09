def solution(a)
  array = (1..a.length+1).to_a
  return (array - a)[0]
end