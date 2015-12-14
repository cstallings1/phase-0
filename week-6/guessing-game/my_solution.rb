# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

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

  def guess(last_guess)
    @last_guess = last_guess
    if @last_guess > @answer
      return :high
    elsif @last_guess < @answer
      return :low
    else
      return :correct
    end
  end

  def solved?
    if @last_guess == @answer
      return true
    else
      return false
    end
  end

end

game = GuessingGame.new(10)
last_guess  = nil
last_result = nil

until game.solved?
  unless last_guess.nil?
    puts "Oops!  Your last guess (#{last_guess}) was #{last_result}."
    puts ""
  end

  print "Enter your guess: "
  last_guess  = gets.chomp.to_i
  last_result = game.guess(last_guess)
end

puts "#{last_guess} was correct!"

# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(last_guess)
    @last_guess = last_guess
    if @last_guess > @answer
      return :high
    elsif @last_guess < @answer
      return :low
    else
      return :correct
    end
  end

  def solved?
    if @last_guess == @answer
      return true
    else
      return false
    end
  end

end





# Reflection
