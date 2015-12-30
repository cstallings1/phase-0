# Virus Predictor

# I worked on this challenge [with: Eddie Hodges ].
# We spent [2] hours on this challenge.

# EXPLANATION OF require_relative
# It gives us access in the my_solution.rb file to the data in the state_data.rb file.
# require by itself would need an absolute path identification. If it's not an absolute path, it will look wherever ruby is installed.
# require is usually used for extra libraries and modules. that might be used in a program.
# require_relative allows you to load a file relative to the current files location in a directory.
# require_relative is used to pull in files.
# More info is in the Ruby docs on the Kernal

require_relative 'state_data'

class VirusPredictor

  # Creates instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Calling predicted_deaths and speed_of_spread methods passing in appropriate variables
  def virus_effects
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private

  # Predicting how many people will die based on population density and population
  # Prints a string with the calculations
  # Predicted deaths is solely based on population density
  def predicted_deaths(population_density, population, state)
    factor = case @population_density
     when @population_density >= 200 then 0.4
     when @population_density >= 150 then 0.3
     when @population_density >= 100 then 0.2
     when @population_density >= 50 then 0.1
     else 0.05
    end

    print "#{@state} will lose #{(@population * factor).floor} people in this outbreak"

  end

  # Changing the speed variable based on the population density.
  # Prints the number of months the disease will spread in based off of speed variable in months
  def speed_of_spread(population_density, state)
    speed = case @population_density
     when @population_density >= 200 then 0.5
     when @population_density >= 150 then 1
     when @population_density >= 100 then 1.5
     when @population_density >= 50 then 2
     else 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

def full_report(hashy_hash)
  hashy_hash.each do |state, value|
    generic_state = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
    generic_state.virus_effects
  end
end

#=======================================================================

# DRIVER CODE

full_report(STATE_DATA);

 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
  # In the outermost hash, a string is used as the key with the '=>' operator. In the innermost hash, symbols are used as the keys with the ':' syntax.
# What does require_relative do? How is it different from require?
  # Require_relative gives you access to the data in a different file. It's different from require because you use the relative file path and not the absolute path like you would with 'require'.
# What are some ways to iterate through a hash?
  # Some methods you can use to iterate through a hash are each, map, each_key, each_value, and each_pair.
# When refactoring virus_effects, what stood out to you about the variables, if anything?
  # They were instance variables which means they can be called by any method within that instance. There was no point in passing them to the other methods when those other methods could access the variables directly.
# What concept did you most solidify in this challenge?
  # Accessing values in a nested hash was definitely solidified in this challenge. When trying to access the values of the inner hash I was making it harder than it was at first by performing two iterations. Once my guide pointed out that this was unnecessary a lightbulb went on.