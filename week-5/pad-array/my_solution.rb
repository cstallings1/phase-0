# Pad an Array

# I worked on this challenge [with: Patrick Oliphant ]

# I spent [1.5] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode
# What is the input? array, minimum size of the final array, optional value to act as the padding
# What is the output? (i.e. What should the code return?) an array
# What are the steps needed to solve the problem?
# IF the length of the array is greater or equal to the min size
  #return the array
#ELSE
  # Add the given value to the array until it reaches the min size
# Return the array


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  if array.length >= min_size || min_size == 0
    return array
  else
    added_digits = min_size - array.length
    added_digits.times{array.push(value)}
  end
  return array
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = []
  if array.length >= min_size || min_size == 0
    return array + new_array
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
  end

  until array.size == min_size
    array << value
  end
  return array
end

def pad(array, min_size, value = nil) #non-destructive
  if array.length >= min_size || min_size == 0
    return array.clone
  else
    final_array = array.clone.fill(value, array.length...min_size)
  end
  return final_array
end

# 4. Reflection
# Which data structure did you and your pair decide to implement and why?
  #We used arrays for this challenge because the order of the elements was more important than the association of the elements.

# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
  # Yes, this challenge was more natural for me to break down the problem into smaller steps.

# What issues/successes did you run into when translating your pseudocode to code?
  #I had to remember if I should be returning the original array or a new array depending on which method I was working on. I only had one section of pseudocode so it was up to me to decide if I should be returning the original array or a new array.

# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
  # I used an until loop when I refactored the pad! method because I felt it read better than the initial solution. These methods weren't used to iterate, but the clone and fill methods were new to me and I found them very helpful. They weren't hard to implement, I just had to really think through how I was trying to use them.