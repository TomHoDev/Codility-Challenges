def solution(a)
  hash = a.group_by { |num| num }

  hash.each_value do |value|  
    if value.size.odd?
      return value[0]
    end
  end
end