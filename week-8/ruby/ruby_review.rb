# PezDispenser Class from User Stories

# I worked on this challenge [by myself].
# I spent [1] hours on this challenge.


# 1. Review the following user stories:
# - As a Pez user, I'd like to be able to "create" a new Pez dispenser with a group of flavors that
#      represent Pez so it's easy to start with a full Pez dispenser.
# - As a Pez user, I'd like to be able to easily count the number of Pez remaining in a dispenser
#      so I can know how many are left.
# - As a Pez user, I'd like to be able to take a Pez from the dispenser so I can eat it.
# - As a Pez user, I'd like to be able to add a Pez to the dispenser so I can save a flavor for later.
# - As a Pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order
#      of the flavors coming up.


# Pseudocode
# Create an initialize method:
  # Input: a group of flavors
  # Output: no output
  # Steps:
    # Define an initialize method that accepts a group of flavors
    # Create an instance variable that holds these flavors
# Create a pez_count method:
  # Input: no input needed
  # Output: the number of pez in the dispenser
  # Steps:
    # Define a pez_count method
    # Iterate through each flavor counting each flavor
    # Return the count
# Create a see_all_pez method:
  # Input: no input needed
  # Output: a list of the remaining flavors
  # Steps:
    # Define a see_all_pez method
    # Iterate through each flavor in the group
    # At each iteration, return the name of the flavor
# Create an add_pez method:
  # Input: flavor
  # Output: no output needed
  # Steps:
    # Define an add_pez method that accepts a flavor
    # Add the new flavor to the end of the current group of flavors
# Create a get_pez method:
  # Input: no input needed
  # Output: a flavor
  # Steps:
    # Define a get_pez method
    # Return the first flavor in the flavor group



# Initial Solution

# class PezDispenser

#   def initialize(flavors)
#     @flavors = flavors
#   end

#   def pez_count
#     count = 0
#     @flavors.each {|flavor| count += 1}
#     return "#{count}"
#   end

#   def see_all_pez
#     @flavors.each {|flavor| flavor}
#   end

#   def add_pez(flavor)
#     @flavors.push(flavor)
#   end

#   def get_pez
#     return "#{@flavors.shift}"
#   end

# end



# Refactored Solution

class PezDispenser

  def initialize(flavors)
    @flavors = flavors
  end

  def pez_count
    return "#{@flavors.count}"
  end

  def see_all_pez
    @flavors.each {|flavor| flavor}
  end

  def add_pez(flavor)
    @flavors.push(flavor)
  end

  def get_pez
    return "#{@flavors.shift}"
  end

end




# DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"
puts "Here's a look inside the dispenser:"
puts super_mario.see_all_pez
puts "Adding a banana pez."
super_mario.add_pez("banana")
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"




# Reflection
# What concepts did you review or learn in this challenge?
  # I got a better idea of what a user story is by reading through the examples in this challenge. I also solidifed what I knew about instance variables vs local variables and transferring data between methods in a class.
# What is still confusing to you about Ruby?
  # This was a pretty simple example of using a Ruby class but I think that my confusion lies where I'm dealing with complex classes. Sometimes the hardest part for me is just knowing where to begin on a complex problem and how to best structure the classes and methods.
# What are you going to study to get more prepared for Phase 1?
  # I am going to push myself to work on more complex Ruby problems so I get more practice working with complex methods and classes. This was the first Ruby review challenge I did and I'm going to try to finish as many as possible. I could also stand to improve on algorithmic problems so I'll be studying those types of problems as well.