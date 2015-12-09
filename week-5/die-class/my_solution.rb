# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [1.5] hours on this challenge.

# 0. Pseudocode

# Input: A new die with a given number of sides greater than 1
# Output:
  # When we roll the die: A random number between 1 and the number of sides.
  # When we ask how many sides the die has: the number of sides is returned.
# Steps:
  # Create a die class that accepts a number of sides greater than 1
    # IF the given sides is less than one, return an error saying the arguments are wrong.
  # Create a sides methd that returns the number of sides on the die
  # Create a roll method that returns a random number between 1 and the number of sides



# 1. Initial Solution

class Die
  def initialize(sides)
    if sides < 1
      raise ArgumentError.new("Please provide a positive integer")
    end
    @sides = sides
  end

  def sides
    @sides
  end

  def roll
    return rand(1..sides)
  end
end



# 3. Refactored Solution
class Die
  attr_reader :sides

  def initialize(sides)
    @sides = sides
    raise ArgumentError.new("Please provide a positive integer") if sides < 1
  end

  def roll
    return rand(1..sides)
  end
end

die = Die.new(6)
puts "sides: #{die.sides}"
puts "roll: #{die.roll}"


# 4. Reflection
# What is an ArgumentError and why would you use one?
  # An ArgumentError is an error raised when the number of arguments doesn't match the number of parameters in the method or the arguments are not the right type of data.
# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
  #I had never used attr_reader as shorthand to creating a method that returns an instance variable; I think this helped to clean up the code. I also learned that you can give the rand method a range to control the bounds of the random number.
# What is a Ruby class?
  #A class is a way to create new objects. Classes have methods that define their behavior and class variables. You can also create instance variables that help to define the behavior of the instances of the class.
# Why would you use a Ruby class?
  #I would use a class when it makes sense for different methods to communicate with eachother. If I had a few methods that were all related, I would think about putting them in a class so I could call the methods within other methods; it creates a framework for how you want an object to behave.
# What is the difference between a local variable and an instance variable?
  # A local variable is contained within it's method, loop, etc. and it can't be called outside of that constructor. An instance variable is contained within that instance of a class. It can be shared between different methods in that class. The syntax for creating an instance variable is an "@" preceeding the name.
# Where can an instance variable be used?
  # As long as the variable was created within an instance of a class, it can used anywhere in any method in that class.