# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [1.5] hours on this challenge.

# Pseudocode

# Input: An integer as the answer passed to the GuessingGame object and an integer as the guess passed to the guess method.
# Output: A symbol of either :high, :low, or :correct depending on the guess in relation to the answer. The output of the solved? method will be true or false depending on if the guess was the answer.
# Steps:
  #Create an initialize method that takes an integer as the 'answer' to the guessing game
    #Create an instance variable 'answer' set to the integer passed to the GuessingGame object
  #Create a method called 'guess' that takes an integer as the argument
    #IF guess is greater than the answer
      #RETURN a symbol :high
    #ELSIF guess is less than the answer
      #RETURN a symbol :low
    #ELSE
      #RETURN a smbol :correct
  #Create a method called 'solved?'
    #IF guess is equal to answer
      #RETURN true
    #ELSE
      #RETURN false


# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    @guess = guess
    if @guess > @answer
      return :high
    elsif @guess < @answer
      return :low
    else
      return :correct
    end
  end

  def solved?
    if @guess == @answer
      return true
    else
      return false
    end
  end

end


# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    @guess = guess
    if @guess > @answer
      return :high
    elsif @guess < @answer
      return :low
    else
      return :correct
    end
  end

  def solved?
    @guess == @answer ? true : false
  end

end

# Reflection
# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
  #A class would represent a broad object, like a person for example. Each person has behaviors and attributes that make them unique, just as instance variables and methods determine the behavior and attributes of their class. We could create a 'talk' instance method in our hypothetical person class to describe the way each person talks. Then we could create an instance variable 'accent' and set it equal to the accent our individual has.
# When should you use instance variables? What do they do for you?
  #Instance variables are used to pass information between methods inside of a class. An instance variable can be accessed anywhere as long as it is contained within that instance of the class. We use these variables when we need different methods to have knowlege of the information in our variable.
# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
  #You use flow control to direct the path of the program depending on the result of a given condition. You could use this structure:
    # IF (condition)
    #   do something
    # ELSIF (condition)
    #   do something else
    # ELSE
    #   default action if previous conditions not met
    # END
    # I did not have any issues using flow control in this challenge.
# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
  #I think we were told to return symbols because it's more efficient than returning strings and good practice if there is no reason to return a string. We were returning a value more or less of low, high, or correct and didn't need to use any methods to change them. The main benefit of symbols is increased performance, each symbol only points to one object whereas you could have two strings that contain the same letters but they point to two different objects.
