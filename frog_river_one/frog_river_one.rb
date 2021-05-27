def solution(x, a)
  taken_steps = {}
  
  a.each_with_index do |step, time|
    taken_steps[step] = time
    return time if taken_steps.length == x 
  end

  return -1
end