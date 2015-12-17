# Review and Refactor: Pad an Array

# I worked on this challenge [by myself].

# First Person's solution I liked
 #I saw that you can clone an array by using the map method and passing a simple block.
# Copy solution here:
# def pad!(array, min_size, value = nil) #destructive
#   if array.length >= min_size
#     return array
#   else
#     while array.length < min_size
#       array.push(value)
#     end
#   end
#   array
# end

# def pad(array, min_size, value = nil) #non-destructive
#   new_array= array.map{|x| x}

#   if new_array.length >= min_size
#     return new_array
#   else
#     while new_array.length < min_size
#       new_array << value
#     end
#   end
#   new_array
# end

# Second Person's solution I liked
  #I learned that you can use the array lengths as the driver for a times loop that pushes the value into the array
# Copy solution here:
# def pad!(array, min_size, value = nil) #destructive
#    (min_size - array.count).times {array << value}
#    array
# end

# def pad(array, min_size, value = nil) #non-destructive
#   new_array = []
#   new_array.concat(array)
#     (min_size - new_array.count).times {new_array << value}
#   new_array
# end


# My original solution:
# def pad!(array, min_size, value = nil) #destructive
#   if array.length >= min_size || min_size == 0
#     return array
#   end

#   until array.size == min_size
#     array << value
#   end
#   return array
# end

# def pad(array, min_size, value = nil) #non-destructive
#   if array.length >= min_size || min_size == 0
#     return array.clone
#   else
#     final_array = array.clone.fill(value, array.length...min_size)
#   end
#   return final_array
# end



# My refactored solution:
def pad!(array, min_size, value = nil) #destructive
  (min_size - array.length).times {array << value} #Use a simple times loop to pad the array
  return array
end

def pad(array, min_size, value = nil) #non-destructive
  padded_array = array.clone #Used a clone of the original array as my new padded array
  (min_size - padded_array.length).times {padded_array << value} #This is the exact same solution as the destructive version
  return padded_array
end


# 5. Reflection
#I like the use of the times loop for a clean and readable solution so I implemented that change in my refactored solution. However, I did keep the clone method I used in my original solution because it saved me a line a code and I think it's just as readable.
