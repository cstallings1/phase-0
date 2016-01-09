# Drawer Debugger

# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# Original Code

class Drawer
attr_reader :contents, :open

# Are there any more methods needed in this class?

  def initialize
    @contents = []
    @open = true
  end

  def close
    @open = false
  end

  def add_item(item)
    @contents << item
  end

  def remove_item(item = @contents.last)
    @contents.delete(item)
  end

  def dump  # what should this method return?
    @contents = []
    puts "Your drawer is empty."
  end

  def view_contents
    puts "The drawer contains:"
    @contents.each {|silverware| puts "- " + silverware.type }
  end

end


class Silverware
attr_reader :type, :clean

# Are there any more methods needed in this class?

  def initialize(type, clean = true)
    @type = type
    @clean = clean
  end

  def eat
    puts "eating with the #{type}"
    @clean = false
  end

  def clean_silverware
    @clean = true
  end

end



# DO NOT MODIFY THE DRIVER CODE UNLESS DIRECTED TO DO SO
# knife1 = Silverware.new("knife")

# silverware_drawer = Drawer.new
# silverware_drawer.add_item(knife1)
# silverware_drawer.add_item(Silverware.new("spoon"))
# silverware_drawer.add_item(Silverware.new("fork"))

# silverware_drawer.view_contents

# silverware_drawer.remove_item

# silverware_drawer.view_contents
# sharp_knife = Silverware.new("sharp_knife")


# silverware_drawer.add_item(sharp_knife)

# silverware_drawer.view_contents

# removed_knife = silverware_drawer.remove_item(sharp_knife)
# removed_knife.eat
# removed_knife.clean_silverware
# raise Exception.new("Your silverware is not actually clean!") unless removed_knife.clean_silverware == true

# silverware_drawer.view_contents
# silverware_drawer.dump
# raise Exception.new("Your drawer is not actually empty") unless silverware_drawer.contents.empty?
# silverware_drawer.view_contents

# # What will you need here in order to remove a spoon? You may modify the driver code for this error.
# spoon = Silverware.new("spoon")
# silverware_drawer.add_item(spoon)
# raise Exception.new("You don't have a spoon to remove") unless silverware_drawer.contents.include?(spoon)
# silverware_drawer.remove_item(spoon) #What is happening when you run this the first time?
# spoon.eat
# puts spoon.clean #=> this should be false

# DRIVER TESTS GO BELOW THIS LINE
#Counts the number of a given utensil in the silverware drawer
def count_test(utensil, silverware_drawer)
  count = 0
  silverware_drawer.contents.each{|silverware| count += 1 if silverware.type == utensil}
  return count
end

silverware_drawer = Drawer.new
knife1 = Silverware.new("knife")
knife2 = Silverware.new("knife")
spoon1 = Silverware.new("spoon")
spoon2 = Silverware.new("spoon")
spoon3 = Silverware.new("spoon")
fork1 = Silverware.new("fork")
fork2 = Silverware.new("fork")
knife3 = Silverware.new("knife")
spoon4 = Silverware.new("spoon")

silverware_drawer.add_item(knife1)
silverware_drawer.add_item(knife2)
silverware_drawer.add_item(knife3)
silverware_drawer.add_item(spoon1)
silverware_drawer.add_item(spoon2)
silverware_drawer.add_item(spoon3)
silverware_drawer.add_item(spoon4)
silverware_drawer.add_item(fork1)
silverware_drawer.add_item(fork2)

puts count_test("knife", silverware_drawer) == 3
puts count_test("spoon", silverware_drawer) == 4
puts count_test("fork", silverware_drawer) == 2

silverware_drawer.remove_item
silverware_drawer.remove_item

puts count_test("fork", silverware_drawer) == 0

silverware_drawer.remove_item(knife1)
puts count_test("knife", silverware_drawer) == 2

knife1.eat
puts knife1.clean == false #Should be true
knife1.clean_silverware
puts knife1.clean == true #Should be true

silverware_drawer.dump
puts silverware_drawer.contents.empty? #Should be true

# Reflection
# What concepts did you review or learn in this challenge?
# What is still confusing to you about Ruby?
# What are you going to study to get more prepared for Phase 1?
