#Attr Methods

# I worked on this challenge [by myself]

# I spent [#] hours on this challenge.

# Pseudocode

# Input: Your name which will initialize the NameData class
# Output: A greeting which include your name from the NameData class
# Steps:
  # Create an initialize method in the NameData class
    # Set a variable @name to your name
    # Create a getter method that returns your name
  # Create an initialize method in the Greetings class
    #Within this method, create a new instance of the NameData class.
  # Create another method called 'hello' in the Greetings class
    #Within this method, puts a greeting to the console that uses your name

class NameData
  attr_reader :name
  def initialize
    @name = "Catie"
  end
end

class Greetings
  def initialize
    @namedata = NameData.new
  end

  def hello
    puts "Hello #{@namedata.name}! How wonderful to see you today."
  end
end

greet = Greetings.new
greet.hello

# Reflection
# What are these methods doing?
  # These methods are either returning or changing the age, name, and occupation variables.
# How are they modifying or returning the value of instance variables?
  # To return the value the program just calls the instance variable name, age, or occupation within a getter method. To change a value the program uses a setter method with the 'def method=(parameter)' format. This method can be called and the argument passed in will become the new value.
# What changed between the last release and this release?
  # The what_is_age method was removed and replaced but the functionality of the program is still the same.
# What was replaced?
  # The what_is_age method was replaced with 'attr_reader :age'.
# Is this code simpler than the last?
  # Yes, it saves a few lines of code and now you can see right away that you can call .age on your object.
# What changed between the last release and this release?
  # The .change_my_age method was removed completely. Line 68 was also changed, now we only need to call .age and set it equal to a value.
# What was replaced?
  # The .change_my_age method was replaced with 'attr_writer :age'.
# Is this code simpler than the last?
  # It is simpler because again, it saves some lines of code and you know right away that you can change the age variable by calling .age = x.
# What is a reader method?
  # It is a method that when called, simply returns the value of a given instance variable. It can be calld outside of the class.
# What is a writer method?
  # It is a method that lets you change the value of an instance variable outside of the class.
# What do the attr methods do for you?
  # It's a shorthand way of creating getter and setter methods with one line of code. For example, you could use 'attr_accessor :name' instead of writing the these methods:
    #def name
    #  @name
    #end
    # def name=(name)
    #  @name = name
    # end
# Should you always use an accessor to cover your bases? Why or why not?
  # I don't know if it's safe to say you should always use it just to cover your bases. Each program is different and you may need more functionality in your methods than what the attr methods can give you.
# What is confusing to you about these methods?
  # The most confusing part is just understanding the relationship when you are creating a new instance of a class within another class. I know this is pretty basic but I really need to think it through step by step right now to make sure I'm understanding what the program is doing.
