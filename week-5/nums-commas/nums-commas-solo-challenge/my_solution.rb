# Numbers to Commas Solo Challenge

# I spent [2.5] hours on this challenge.

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


# # 1. Initial Solution
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
  num = num.to_s
  count = 0

  (num.length / 3).times do |n|
    count -= 4
    num.insert(count, ",")
  end
  num.slice!(0) if num.start_with?(",")
  return num
end

puts separate_comma(100000)

# 3. Reflection
# What was your process for breaking the problem down? What different approaches did you consider?
  # I thought about how I would add commas to the number if I was just doing it with pen and paper. I would look at the number as a whole, start counting right to left adding a comma after every third digit. I also thought about breaking down the number into chucks of three digits and adding commas between each section but that didn't end up working out.
# Was your pseudocode effective in helping you build a successful initial solution?
  # It was effective for the most part. It definitely helped me when writing the code, I just had to add couple things like a conversion from an array to a string.
# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
  # I used the insert and slice method in my refactored code, these were new for me. Using insert allowed me to get rid of the unshift and pop methods I was using originally. I didn't have trouble using the Ruby docs, I just need to be careful to manage my time because I can quickly get lost in researching the methods. Using the docs did not significantly change my code but it did help to make it more concise.
# How did you initially iterate through the data structure?
  # I used an until loop, I kept looping until the array with the original number was empty.
# Do you feel your refactored solution is more readable than your initial solution? Why?
  # My refactored solution is  more readable mainly because I'm using insert instead of unshift and pop. Unshift and pop don't read as well as insert - there's really no question what your doing when you use a word like insert. I also decided not to put the digits in an array as it was unnecessary.