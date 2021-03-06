# Create a Car Class from User Stories


# I worked on this challenge [by myself].


# 2. Pseudocode
#Create a car object
#Create an initialize method:
  #Input: model, color
  #Output: none
  #Steps:
    #Create a variable for car and model
    #Create a variable for speed
    #Create a variable for distance
#Create a drive method
  #Input: distance to drive
  #Output: statement that you drove x amount of miles
  #Steps:
    #Add given distance to distance variable
    #Return distance variable
#Create a speed method
  #Input: none
  #Output: current speed
  #Steps:
    #Return the current speed variable
#Create a turn method
  #Input: right or left
  #Output: statement telling you which way you turned
  #Steps:
    #Return a statement telling the player which way they have turned.
#Create an accelerate method
  #Input: desired speed
  #Output: statement telling you your current speed
  #Steps:
    #Set speed variable to desired speed
    #Return current speed
#Create an decelerate method
  #Input: desired speed
  #Output: statement telling you your current speed
  #Steps:
    #Set speed variable to desired speed
    #Return current speed
#Create a distance travelled method
  #Input: none
  #Output: Return the total distance traveled
  #Steps:
    #Return the distance variable
#Create a stop method
  #Input: none
  #Output: statement telling you you've stopped
  #Steps:
    #Set speed variable to 0
    #Return a statement saying you've stopped the car

# 3. Initial Solution
# class Car
#   def initialize(model, color)
#     @model = model
#     @color = color
#     @speed = 0
#     @distance = 0
#     @pizzas = []
#   end

#   def drive(distance)
#     @distance += distance
#     puts "You have driven #{@distance} miles."
#   end

#   def check_speed
#     puts "You are driving #{@speed} MPH."
#   end

#   def turn(direction)
#     puts "You have turned #{direction}."
#   end

#   def accelerate(desired_speed)
#     @speed = desired_speed
#     puts "You are now driving at #{@speed} MPH."
#   end

#   def decelerate(desired_speed)
#     @speed = desired_speed
#     puts "You are now driving at #{@speed} MPH."
#   end

#   def distance_traveled
#     puts "You have traveled #{@distance} miles."
#   end

#   def stop
#     @speed = 0
#     puts "You've stopped the car."
#   end

#   def add_pizza(type)
#     @pizzas << (Pizza.new(type))
#     puts "Added a #{type} pizza."
#   end

#   def deliver_pizza
#     puts "Pizza delivery. You ordered a #{@pizzas[0].type} pizza. That'll be $15."
#     @pizzas.shift
#   end
# end

# class Pizza
#   attr_reader :type

#   def initialize(type)
#     @type = type
#   end
# end

# # 1. DRIVER TESTS GO BELOW THIS LINE
# # Create a new car of your desired model and type
# my_car = Car.new("Hyundai", "Elantra")
# #Pizza orders:
# my_car.add_pizza("cheese")
# my_car.add_pizza("pepperoni")
# my_car.add_pizza("vegetarian")

# # Drive .25 miles (speed limit is 25 mph)
# my_car.accelerate(25)
# my_car.drive(0.25)
# # At the stop sign, turn right
# my_car.stop
# my_car.turn("right")
# # Drive 1.5 miles (speed limit is 35 mph)
# my_car.accelerate(35)
# my_car.drive(1.5)
# # At the school zone, check your speed
# my_car.check_speed
# # Slow down to speed limit 15 mph
# my_car.decelerate(15)
# # Stop at your destination
# my_car.stop
# # Log your total distance travelled
# my_car.distance_traveled
# #Deliver pizza
# my_car.deliver_pizza
# # Drive .25 miles more miles
# my_car.drive(0.25)
# # At the stop sign, turn left
# my_car.stop
# my_car.turn("left")
# # Stop at your destination
# my_car.stop
# # Log your total distance travelled
# my_car.distance_traveled
# #Deliver pizza
# my_car.deliver_pizza
# # Drive 1.4 miles (speed limit is 35 mph)
# my_car.accelerate(35)
# my_car.drive(1.4)
# # Stop at your destination
# my_car.stop
# # Log your total distance travelled
# my_car.distance_traveled
# #Deliver pizza
# my_car.deliver_pizza




# 4. Refactored Solution
# Didn't find any additional built in methods that would be useful
# I mainly refactored for readabilty
class Car
  attr_reader :model, :color, :speed, :distance

  def initialize(model, color)
    @model = model
    @color = color
    @speed = 0
    @distance = 0
    @pizzas = []
  end

  def drive(distance)
    @distance += distance
    puts "Driving #{@distance} miles."
  end

  def check_speed
    puts "Current speed: #{@speed} MPH."
  end

  def turn(direction)
    puts "You have turned #{direction}."
  end

  def change_speed(desired_speed)
    @speed = desired_speed
    puts "Your speed is now #{@speed} MPH."
  end

  def distance_traveled
    puts "You have traveled #{@distance} miles."
  end

  def stop
    @speed = 0
    puts "You've stopped the car."
  end

  def add_pizza(toppings)
    @pizzas << (Pizza.new(toppings))
    puts "Added a pizza with: #{toppings}"
  end

  def deliver_pizza
    puts "Pizza delivery. You ordered a pizza with: "
    @pizzas[0].type.each{|n| puts n}
    @pizzas.shift
  end
end

class Pizza
  attr_reader :type

  def initialize(type)
    @type = type
  end
end



# # 1. DRIVER TESTS GO BELOW THIS LINE
# Create a new car of your desired model and type
my_car = Car.new("Hyundai", "Elantra")
#Pizza orders:
my_car.add_pizza(["sausage", "green pepper", "mushroom"])
my_car.add_pizza(["pepperoni", "green olive"])
my_car.add_pizza(["vegetarian"])

# Drive .25 miles (speed limit is 25 mph)
my_car.change_speed(25)
my_car.drive(0.25)
# At the stop sign, turn right
my_car.stop
my_car.turn("right")
# Drive 1.5 miles (speed limit is 35 mph)
my_car.change_speed(35)
my_car.drive(1.5)
# At the school zone, check your speed
my_car.check_speed
# Slow down to speed limit 15 mph
my_car.change_speed(15)
# Stop at your destination
my_car.stop
# Log your total distance travelled
my_car.distance_traveled
#Deliver pizza
my_car.deliver_pizza
# Drive .25 miles more miles
my_car.drive(0.25)
# At the stop sign, turn left
my_car.stop
my_car.turn("left")
# Stop at your destination
my_car.stop
# Log your total distance travelled
my_car.distance_traveled
#Deliver pizza
my_car.deliver_pizza
# Drive 1.4 miles (speed limit is 35 mph)
my_car.change_speed(35)
my_car.drive(1.4)
# Stop at your destination
my_car.stop
# Log your total distance travelled
my_car.distance_traveled
#Deliver pizza
my_car.deliver_pizza



# 5. Reflection
# What concepts did you review or learn in this challenge?
  # I reviewed the attr_reader method, how to pass data between methods in a class and how to make classes interact with eachother. I also solidifed my understanding of instance vs local variables and adding and removing elements from an array.
# What is still confusing to you about Ruby?
  # It's still a little confusing to me the best way to design objects when they need to interact with eachother. This example wasn't too complex so it was good practice but I still have a lot to learn when it comes to creating complex objects in Ruby and having them interact with other objects.
# What are you going to study to get more prepared for Phase 1?
  #I'm going to do some additional research on object oriented design and start reading Sandi Metz's Practical Object oriented Design in Ruby.