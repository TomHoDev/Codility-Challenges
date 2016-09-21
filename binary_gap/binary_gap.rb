def solution(n)
  n_array = n.to_s(2).split('')
  
  i = 0 
  max_length = 0
  current_length = 0
  while i < n_array.length
    
    if n_array[i] == '1'
      if current_length >  max_length
        max_length = current_length
      end
      
      current_length = 0
    else
      current_length += 1
    end      
    i += 1  
  end
  
  max_length  
end