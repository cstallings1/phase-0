# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [with: LeeAnne Hawley].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: Array of numbers
# Output: Total sum of array
# Steps to solve the problem.
  #Create array
  #Sum first two elements of array
  #Sum next element
  #Continue summing elements through array

# 1. total initial solution
def total(array)
  sum = 0

  array.each do |n|
    sum += n
  end

  return sum

end


# 3. total refactored solution
def total(array)
  array.reduce(:+)
end


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: Array
# Output: Sentence
# Steps to solve the problem.
  #Pass method an array
  #Create a sentence variable
  #Evaluate each element in the array
  #Add each element as a string to the sentence variable
  #Return the sentence

# 5. sentence_maker initial solution
def sentence_maker(array)
  first_word = ""
  body_sentence = ""
  last_word = ""

  first_word << array.shift.capitalize!
  last_word << array.pop + "."

  array.each do |word|
    body_sentence << word.to_s + " "
  end

  new_sentence = "#{first_word} #{body_sentence}#{last_word}"

  return new_sentence

end


# 6. sentence_maker refactored solution
def sentence_maker(array)

  sentence = array.join(' ') +  '.'
  new_sentence = sentence.capitalize!
  return new_sentence

end

