# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself].


# 2. Review the simple assert statement

# def assert
#   raise "Assertion failed!" unless yield
# end

# name = "bettysue"
# assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
# Create a method named 'assert'
  # Return an error statement UNLESS the provided code block is true
# Set a name variable equal to 'bettysue'
# Create a block called 'assert' that contains a true statement
  #Assert returns true
# Create a block called 'assert' that contains a false statement
  #Assert returns the error message
#A RunTimeError is raised with the provided message

# 3. Copy your selected challenge here
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



# 4. Convert your driver test code from that challenge into Assert Statements

def assert
  raise "Assertion Failed!" unless yield
end

assert {separate_comma(0) == '0'}
assert {separate_comma(10) == '10'}
assert {separate_comma(999) == '999'}
assert {separate_comma(2000) == '2,000'}
assert {separate_comma(33000) == '33,000'}
assert {separate_comma(123432) == '123,432'}
assert {separate_comma(7382938) == '7,382,938'}
assert {separate_comma(81398586) == '81,398,586'}
assert {separate_comma(284938673) == '284,938,673'}


# 5. Reflection
# What concepts did you review or learn in this challenge?
  #I was able to learn about the assert statement and the different variations of it. I've used blocks a lot with Ruby's built in methods like each, map, collect, etc. but I haven't really used yield to call the blocks. I remember reading about this before but this is the first time I really got to practice it.
# What is still confusing to you about Ruby?
  #I'm still confused on how to use the assert_no_match method with regular expressions. The rspec tests for this challenge used regular expressions to test for a match between random numbers but I couldn't get that working with assert. I ended up just re-writing my driver code and using the regular assert statement and that worked.
# What are you going to study to get more prepared for Phase 1?
  #I'd like to be more familiar with testing before Phase 1 but I know that we cover rspec on site. I think reviewing the rspec and assert statments from previous challenges will help prepare me.