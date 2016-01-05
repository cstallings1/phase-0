# I worked on this challenge [with: ].
# This challenge took me [#] hours. 10 min

# Pseudocode
# Create a container with 1 and 0
# Create a counter
# UNTIL the counter is greater than or equal to the given number
  # add the sum of the last number in the container plus the number before it to the container
# END
# IF the given number is a number in the container
# RETURN true
# ELSE
# RETURN false


# Initial Solution

def is_fibonacci?(num)

  fibonacci_nums = [0, 1]

  i = 1
  counter = 0
  until counter >= num
    fibonacci_nums.push(fibonacci_nums[i] + fibonacci_nums[i - 1])
    i += 1
    if fibonacci_nums[-1] >= num
      break
    end
    counter += 1
  end

  if fibonacci_nums.include?(num)
    return true
  else
    return false
  end
end

puts is_fibonacci?(927372692193078999171)

# Refactored Solution







# Reflection