numbers = [1,2,3,4,5,one,two,three,four,five] 

  numbers.length.times do |x| 
  numbers.length.times do |y| 
    
  if numbers[x].class == String && numbers[y].class == String 
    if numbers[x] < numbers[y] 
      temp = numbers[x] 
      numbers[x] = numbers[y] 
      numbers[y] = temp 
    end 
  end 

  if numbers[x].class <= Integer && numbers[y].class <= Integer 
    if numbers[x] < numbers[y] 
      temp = numbers[x] 
      numbers[x] = numbers[y] 
      numbers[y] = temp 
    end 
  end 

  end 
  end

puts numbers
