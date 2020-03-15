def map(source_array)
  index = 0
  array = []
  while index < source_array.length do
    array << yield(source_array[index])
    index+=1 
  end
  array
end

def reduce(source_array, starting_value=0) 
  value = starting_value
  index = 0
  while index < source_array.length do 
    value = yield(source_array[index], value)
    index+=1 
  end 
  puts value
  return false if value == nil
  value
end
