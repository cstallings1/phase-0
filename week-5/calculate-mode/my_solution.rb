# Calculate the mode Pairing Challenge

# I worked on this challenge [with: Dave Spivey]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? An array
# What is the output? (i.e. What should the code return?) An array of the most frequent keys
# What are the steps needed to solve the problem?
  #Create an empty hash
  #Iterate through the array and assign each element as a key
  #Assign each key's value as the number of times it appears in the array
  #Return the key or keys with the highest value


# 1. Initial Solution
def mode(array)
  hash = Hash.new(0)
  new_array = []

  array.each do |i|
    hash[i] += 1
  end

  hash = hash.sort_by { |key, value| value }.reverse.to_h

  hash.each do |key, value|
    if value == hash.values[0]
      new_array << key
    end
  end
  p new_array
end



# 3. Refactored Solution
def mode(array)
  new_array = []
  count_array = []

  array.each do |i|
    count_array << array.count(i)
  end

  array.each do |i|
    new_array << i if array.count(i) == count_array.max
  end

  p new_array.uniq
end


# 4. Reflection

# Which data structure did you and your pair decide to implement and why?
  #At first we decided on a hash because we were assigning a count to each number in the array., using associative data. However, returning the most frequent number turned out to be cumbersome so we only used arrays on the refactored solution.

# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
 #I think it was about the same as the last time I paired; however, I did notice this week it's getting easier as compared to last week.

# What issues/successes did you run into when translating your pseudocode to code?
  #We ran into an issue trying to return the most frequent value in our hash as an arryay. It didn't seem like it would be so hard at the beginning but it was definitely a challenge to execute.

# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
  #We used .sort_by and .each to iterate through the content. We uesd the uniq method in our refactored solution which was new to me and turned out to be very helpful. .Sort_by was a little tricky because you sort a hash but the output is an array.
