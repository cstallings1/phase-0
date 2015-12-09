# Calculate the Median!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. Pseudocode

# What is the input? An array of numbers or letters
# What is the output? (i.e. What should the code return?)The median value
# What are the steps needed to solve the problem?
  #Sort the array smallest to largest or in alphabetical order depending on if it's a number or string.
  #IF there's an odd number of items in the array
    #Return the middle item
  #OTHERWISE
    #Return the average of the two elements

# 1. Initial Solution
def median(array)
  array.sort!
  if array.length % 2 == 1
    return array[(array.length / 2)]
  end

  dummy = []
  until array.length == 2
    dummy << array.shift
    dummy << array.pop
  end

  median = ((array[0].to_f + array [1].to_f) / 2).to_f
  return median

end

# 3. Refactored Solution
def median(array)
  array.sort!
  if array.length % 2 == 1
    return array[(array.length / 2)]
  end

  until array.length == 2
    array.shift
    array.pop
  end

  return median = ((array[0].to_f + array [1].to_f) / 2).to_f

end


# 4. Reflection