# Drawer Debugger

# I worked on this challenge [with: ].
# I spent [#] hours on this challenge.

# Original Code

class Drawer
attr_reader :contents

# Are there any more methods needed in this class?

  def initialize
    @contents = []
    @open = true
  end

  def open
    @open = true
  end

  def close
    @open = false
  end

  def add_item(item)
    @contents << item
  end

  def remove_item(item = @contents.pop) #what is `#pop` doing?
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
knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1)
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork"))

silverware_drawer.view_contents
puts silverware_drawer.contents[0].type == "knife" # Shoule be true
puts silverware_drawer.contents[1].type == "spoon" # Shoule be true
puts silverware_drawer.contents[2].type == "fork" # Shoule be true

silverware_drawer.remove_item
puts silverware_drawer.contents.count == 2 # Should be true

silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)
puts silverware_drawer.contents.count(sharp_knife) == 1 # Should be true

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
puts silverware_drawer.contents.count(sharp_knife) == 0 #Should be true
removed_knife.eat
puts removed_knife.clean == false #Should be true
removed_knife.clean_silverware
puts removed_knife.clean == true #Should be true
raise Exception.new("Your silverware is not actually clean!") unless removed_knife.clean_silverware == true

silverware_drawer.view_contents
silverware_drawer.dump
puts silverware_drawer.contents.count == 0 #Should be true
raise Exception.new("Your drawer is not actually empty") unless silverware_drawer.contents.empty?
silverware_drawer.view_contents

# What will you need here in order to remove a spoon? You may modify the driver code for this error.
spoon = Silverware.new("spoon")
silverware_drawer.add_item(spoon)
puts silverware_drawer.contents.count(spoon) == 1 #Should be true
raise Exception.new("You don't have a spoon to remove") unless silverware_drawer.contents.include?(spoon)
silverware_drawer.remove_item(spoon) #What is happening when you run this the first time?
puts silverware_drawer.contents.count(spoon) == 0 #Shoud return true
spoon.eat
puts spoon.clean #=> this should be false

# DRIVER TESTS GO BELOW THIS LINE






# Reflection
