# I worked on this challenge [by myself].
# This challenge took me [#] hours.


# Pseudocode
# Create method called 'super_fizzbuzz'
# INPUT: array of numbers
# OUTPUT: array of the same numbers, except multiples of 3 replaced with 'Fizz', multiples of 5 replaced with 'Buzz' and multiples of both replaced with 'FizzBuzz'.
# STEPS:
# Create a new empty container
# Evaluate each number in original array
# IF the number is divisible by 5 and 3
#   Add 'FizzBuzz' to new container
# ELSIF the number is divisible by 3
#   Add 'Fizz' to the new container
# ELSIF the number is divisible by 5
#   Add 'Buzz' to the new container
# ELSE
#   Add the number to the container
# Return the new container

# Initial Solution

def super_fizzbuzz(array)
  fizzbuzzed_array = []
  array.each do |n|
    if (n % 3 == 0) && (n % 5 == 0)
      fizzbuzzed_array.push('FizzBuzz')
    elsif n % 3 == 0
      fizzbuzzed_array.push('Fizz')
    elsif n % 5 == 0
      fizzbuzzed_array.push('Buzz')
    else
      fizzbuzzed_array.push(n)
    end
  end
  return fizzbuzzed_array
end



# Refactored Solution






# Reflection
