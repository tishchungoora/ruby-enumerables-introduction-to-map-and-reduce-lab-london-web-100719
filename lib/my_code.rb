def map_to_negativize(source_array)
  i = 0
  destination_array = []
  
  while i < source_array.length do
    negative_element = source_array[i] * -1
    destination_array = destination_array.push(negative_element)
    i += 1
  end
  
  destination_array
end

=begin
# Or alternatively using the 'map' method
def map_to_negativize(source_array)
  source_array.map { |i| i * -1 }
end
=end

def map_to_no_change(source_array)
  i = 0
  destination_array = []
  
  while i < source_array.length do
    new_element = source_array[i]
    destination_array = destination_array.push(new_element)
    i += 1
  end
  
  destination_array
end

def map_to_double(source_array)
  i = 0
  destination_array = []
  
  while i < source_array.length do
    double_element = source_array[i] * 2
    destination_array = destination_array.push(double_element)
    i += 1
  end
  
  destination_array
end

def map_to_square(source_array)
  i = 0
  destination_array = []
  
  while i < source_array.length do
    square_element = source_array[i] ** 2
    destination_array = destination_array.push(square_element)
    i += 1
  end
  
  destination_array
end

def reduce_to_total(source_array, starting_point = 0)
  i = 0
  result = 0
  
  while i < source_array.length do
      result = result + source_array[i]
      i += 1
  end
  
  result + starting_point
end

=begin
# Or alternatively using the 'reduce' method
def reduce_to_total(source_array, starting_point = 0)
  source_array.reduce(:+) + starting_point
end
=end

def reduce_to_all_true(source_array)
  new_array = source_array.map{ |x| !!x }
  
  new_array.each { |i| return false if i == false }
  
  true
end

def reduce_to_any_true(source_array)
  new_array = source_array.map{ |x| !!x }
  
  new_array.each { |i| return true if i == true }
  
  false
end
