# Implement a Reverse Polish Notation Calculator


# I worked on this challenge [by myself].

# Pseudocode

# Input: A string containing any amount of numbers and operands (+, -, or *).
# Output: The integer result of applying the operands on the respective integers
# Steps:
  #Convert string to an array
  #Iterate through the array
    #IF the element is a number
      #convert it to an integer
    #ELSE
      #leave the element as is
    #END
  #Create a new array
  #Iterate through original array
  #IF the element is an integer
    #Push it into the new array
  #ELSE
    #Apply the operand to the last two elements in the new array
  #END

# Initial Solution
class RPNCalculator

  def evaluate(string)

    evaluated_nums = []
    array = string.split()
    array.map! {|n| n.to_i == 0 ? n : n.to_i}
    array.each do |n|
      if n.is_a?(Integer)
        evaluated_nums << n
      else
        evaluated_nums[0].send(n, evaluated_nums[1])
      end
    end
    # p evaluated_nums
  end

end

rpn = RPNCalculator.new
p rpn.evaluate('1 1 +')



# 4. Refactored Solution






# Reflection
