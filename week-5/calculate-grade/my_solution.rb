# Calculate a letter grade!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself].

# 0. Pseudocode

# What is the input? An array of test scores between 1 and 100
# What is the output? (i.e. What should the code return?) An average letter grade
# What are the steps needed to solve the problem?
  #Add all the numbers in the given array
  #Divide that sum by the number of test scores given to get the average
  #If the median is 90 - 100 return an "A"
  #If the median is 80 - 89 return an "B"
  #If the median is 70 - 79 return an "C"
  #If the median is 60 - 69 return an "D"
  #If the median is 0 - 59 return an "F"

# 1. Initial Solution
def get_grade(array)
  sum = 0
  array.each {|n| sum += n}
  avg = sum / array.length

  if avg >= 90
    return "A"
  elsif avg >= 80
    return "B"
  elsif avg >= 70
    return "C"
  elsif avg >= 60
    return "D"
  else
    return "F"
  end

end


# 3. Refactored Solution
def get_grade(array)
  avg = array.reduce(:+) / array.length
  if avg >= 90
    return "A"
  elsif avg >= 80
    return "B"
  elsif avg >= 70
    return "C"
  elsif avg >= 60
    return "D"
  else
    return "F"
  end
end


# 4. Reflection