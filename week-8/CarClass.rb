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
class Car

  def initialize(model, color)
    @model = model
    @color = color
    @speed = 0
    @distance = 0
  end

  def drive(distance)
    @distance += distance
    puts "You have driven #{@distance} miles."
  end

  def speed
    puts "You are driving #{@speed} MPH."
  end

  def turn(direction)
    puts "You have turned #{direction}."
  end

  def accelerate(desired_speed)
    @speed = desired_speed
    puts "You are now driving at #{@speed} MPH."
  end

  def decelerate(desired_speed)
    @speed = desired_speed
    puts "You are now driving at #{@speed} MPH."
  end

  def distance_traveled
    puts "You have traveled #{@distance} miles."
  end

  def stop
    @speed = 0
    puts "You've stopped the car. Speed is #{@speed} MPH."
  end

end




# 4. Refactored Solution






# # 1. DRIVER TESTS GO BELOW THIS LINE
# Create a new car of your desired model and type
my_car = Car.new("Hyundai", "Elantra")
# Drive .25 miles (speed limit is 25 mph)
my_car.accelerate(25)
my_car.drive(0.25)
# At the stop sign, turn right
my_car.stop
my_car.turn("right")
# Drive 1.5 miles (speed limit is 35 mph)
my_car.accelerate(35)
my_car.drive(1.5)
# At the school zone, check your speed
my_car.speed
# Slow down to speed limit 15 mph
my_car.decelerate(15)
# Drive .25 miles more miles
my_car.drive(0.25)
# At the stop sign, turn left
my_car.stop
my_car.turn("left")
# Drive 1.4 miles (speed limit is 35 mph)
my_car.accelerate(35)
my_car.drive(1.4)
# Stop at your destination
my_car.stop
# Log your total distance travelled
my_car.distance_traveled



# 5. Reflection

