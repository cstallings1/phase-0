# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Array of strings
# Output: A random string from the input list when we roll the die
# Steps:
  # Create an instance variable called 'labels' equal to the labels array passed in to the object
  # When 'sides' is called on the Die:
    # Return the number of items in the labels array
  # When 'roll' is called on the Die:
    # Return a random string from the array of labels that was passed to the Die object
  # IF Die.new is passed an empty array
    # Return an ArgumentError

# Initial Solution

class Die
  def initialize(labels)
    @labels = labels
    if labels == []
      raise ArgumentError.new('Array must contain at least one element')
    end
  end

  def sides
    return @labels.length
  end

  def roll
    return @labels[rand(0..(@labels.length - 1))]
  end
end

die = Die.new(["A", "B", "C", "D"])
puts die.sides
puts die.roll


# Refactored Solution

class Die
  def initialize(labels)
    @labels = labels
    raise ArgumentError.new('Array must contain at least one element') if labels == []
  end

  def sides
    @sides = @labels.length
  end

  def roll
    return @labels.sample
  end
end

die = Die.new([1, 2, 3, 4, 5])
puts die.sides
puts die.roll

# Reflection
# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
  # This time I had to create a labels instance variable as well as a sides instance variable which equaled the length of the labels array. I decided to use the sample method instead of rand because it works better when you have an array that could contain numbers or strings.
# What does this exercise teach you about making code that is easily changeable or modifiable?
  # It's important to think about which datatypes your methods can be called on when you start to build out a program. For example, using the sample method will work regardless if a number or string is passed in to the labels array. Rand, on the other hand worked well when numbers made up the die sides, but got a little more complicated when strings were used as the sides.
# What new methods did you learn when working on this challenge, if any?
  # Sample was a new method for me - I had always used rand before but I see how sample can work better when working with an array of data.
# What concepts about classes were you able to solidify in this challenge?
  # The idea of creating instance variables was solidifed this time because I had to create a labels instance variable but then had to create another variable for the sides method. When I first tested my code it failed because I was using 'labels' in my roll method but forgot to create an instance variable in the initialize method.
