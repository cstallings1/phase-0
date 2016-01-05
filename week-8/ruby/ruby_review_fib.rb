# I worked on this challenge [by myself ].
# This challenge took me [2] hours.

# Pseudocode
# Create a container seeded with 1 and 0
# Create a counter
# UNTIL the counter is greater than or equal to the given number
  # add the sum of the last number in the container plus the number before it to the container
# END
# IF the given number is a number in the container
# RETURN true
# ELSE
# RETURN false


# Initial Solution

# def is_fibonacci?(num)

#   fibonacci_nums = [0, 1]

#   i = 1
#   counter = 0
#   until counter >= num
#     fibonacci_nums.push(fibonacci_nums[i] + fibonacci_nums[i - 1])
#     i += 1
#     if fibonacci_nums[-1] >= num
#       break
#     end
#     counter += 1
#   end

#   if fibonacci_nums.include?(num)
#     return true
#   else
#     return false
#   end
# end

# puts is_fibonacci?(927372692193078999171)

# Refactored Solution
def is_fibonacci?(num)

  fibonacci_nums = [0, 1]

  i = 1
  until fibonacci_nums[-1] > num
    fibonacci_nums.push(fibonacci_nums[i] + fibonacci_nums[i - 1])
    i += 1
  end

  fibonacci_nums.include?(num) ? true : false

end

puts is_fibonacci?(927372692193078999171)
puts is_fibonacci?(0)


# Reflection
# What concepts did you review or learn in this challenge?
  # I reviewed how to use loops and I learned about the Math.sqrt function because I tried to use that in a solution that didn't end up working.
# What is still confusing to you about Ruby?
  # I'm a little confused about using really large decimals in Ruby because I had a solution that worked for smaller numbers but fell apart when dealing with large numbers because their resulting square roots were numbers with many decimal places. Just trying to figure out why that is and if there's a way around it.
# What are you going to study to get more prepared for Phase 1?
  # I'll continue to study built in methods and modules that might be helpful for situations like this where you are dealing with really large numbers.
