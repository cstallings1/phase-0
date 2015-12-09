# Pad an Array

# I worked on this challenge [with: Patrick Oliphant ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  new_array = []
  if array.length >= min_size || min_size == 0
    return array
  else
    new_array = Array.new(min_size - array.length, value)
    final_array = array + (new_array)
  end
  return final_array
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = []
  if array.length >= min_size || min_size == 0
    return array.clone
  else
    new_array = Array.new(min_size - array.length, value)
    final_array = array + new_array
  end
  return final_array
end

# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
   if array.length >= min_size || min_size == 0
     return array
   else
     array.insert(array.last, *Array.new([ min_size - array.length].max, value))
   end
   return array
 end

 def pad(array, min_size, value = nil) #non-destructive
   final_array = []
   if array.length >= min_size || min_size == 0
     return array.clone
   else
     final_array = array.clone.fill(value, array.length...min_size)
   end
   return final_array
 end







# 4. Reflection
