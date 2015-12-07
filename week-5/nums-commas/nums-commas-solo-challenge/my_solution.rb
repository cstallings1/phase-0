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
  # Create a new container
  # WHILE digits remain
  #   Put last 3 digits in the new container
  #   Put a comma in the new container
  #   Repeat until no digits remain
  # END
  # Return the new container


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




# 3. Reflection