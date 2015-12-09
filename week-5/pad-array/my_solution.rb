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
# Were you successful in breaking the problem down into small steps?
  #Yes, this challenge was easier for me to pseudocode than others.

# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
  #We were able to easily translate the pseudocode to the actual code. The only difficulties I had was when I had to think about weather or not I needed to return a new array or the same array. That wasn't specified in the pseudocode.

# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
  #The initial solution failed the test when 0 was given as the min_size. To fix this we added an 'or' statement to include this case in our IF statement.

# When you refactored, did you find any existing methods in Ruby to clean up your code?
  #We used clone and fill in our refacored solution. These methods were new to me and I can see them being very helpful in the future when working witha arrays.

# How readable is your solution? Did you and your pair choose descriptive variable names?
  #I think the final solution is pretty readable and the variable names descriptive. I did decide to use a loop in the refactored solution for the pad method instaed of chaining methods together on one line - I thought this improved readabillity.

# What is the difference between destructive and non-destructive methods in your own words?
  #A destructive method is one that changes the input. An '!' is added a the end of a desructive method to signify danger. A non-desructive method does not change the input, it duplicates the input as a new object.


