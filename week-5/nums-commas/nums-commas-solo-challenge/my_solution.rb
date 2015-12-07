# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
  #Initial number with no commas
# What is the output? (i.e. What should the code return?)
  #Initial number string with commas added appropriately
# What are the steps needed to solve the problem?
  # Split up each digit in original number
  # Create a new container for the new number
  # Create a counter

  # WHILE original number is not empty
  #   Take last digit of original number and add as first digit in the new number
  #   Every third digit, add a comma to the beginning of the new container
  #   Repeat until no digits remain
  # END

  # Return the new container as a string


# 1. Initial Solution
def separate_comma(num)
  num = num.to_s.split(//)
  new_num = []

  counter = 0
  until num.empty?
    counter += 1
    new_num.unshift(num.pop)
    if counter % 3 == 0
      new_num.unshift(",")
    end
  end

  if new_num[0] == ","
    new_num.shift
  end

  num_string = new_num.join("")

  return num_string
end

# 2. Refactored Solution
def separate_comma(num)
  num = num.to_s.split(//)
  count = 0

  (num.length / 3).times do |n|
    count -= 4
    num.insert(count, ",")
  end

  num.shift if num[0] == ","

  return num.join("")
end

# 3. Reflection