def solution(n, a)
  hash = {}
  counter_values = []
  max_counter_value = 0
  last_reset_value = 0

  for i in (1..n)
    hash[i] = 0
  end

  a.each do |counter|
    if counter <= n
      hash[counter] = last_reset_value if hash[counter] < last_reset_value
      hash[counter] += 1
      max_counter_value = hash[counter] if hash[counter] > max_counter_value
    else
      last_reset_value = max_counter_value
    end
  end

  for i in (1..n)
    hash[i] = last_reset_value if hash[i] < last_reset_value
  end

  hash.values
end