# I worked on this challenge [by myself].
# This challenge took me [40] min.


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

# def super_fizzbuzz(array)
#   fizzbuzzed_array = []
#   array.each do |n|
#     if (n % 3 == 0) && (n % 5 == 0)
#       fizzbuzzed_array.push('FizzBuzz')
#     elsif n % 3 == 0
#       fizzbuzzed_array.push('Fizz')
#     elsif n % 5 == 0
#       fizzbuzzed_array.push('Buzz')
#     else
#       fizzbuzzed_array.push(n)
#     end
#   end
#   return fizzbuzzed_array
# end

# Refactored Solution
def super_fizzbuzz(array)
  array.map do |n|
    if n % 15 == 0
      'FizzBuzz'
    elsif n % 3 == 0
      'Fizz'
    elsif n % 5 == 0
      'Buzz'
    else
      n
    end
  end
end

puts super_fizzbuzz([30, 9, 20, 1]) # => ["FizzBuzz", "Fizz", "Buzz", 1]



# Reflection
# What concepts did you review in this challenge?
  # I reviewed iterating over an array and using.map. It was helpful to review how .each and .map are different in that .map returns a new array. I also reviewed case statements and if statements but ended up using the if statement.
# What is still confusing to you about Ruby?
  # There really wasn't anything that confused me about this problem. I just need to keep the built in Ruby methods fresh in my mind for Phase-1.
# What are you going to study to get more prepared for Phase 1?
  # I will study tbe different enumerable methods by reading through the Ruby docs to keep this fresh in my mind.
