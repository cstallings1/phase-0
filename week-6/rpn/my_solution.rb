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
require 'pry-byebug'
# Initial Solution
class RPNCalculator

  def evaluate(string)
    return 0 if string == '0'
    evaluated_nums = []
    num_array = string.split()
    num_array.map! {|n| n.to_i == 0 ? n : n.to_i}

    num_array.each do |n|
      if n.is_a?(Integer)
        evaluated_nums << n
      else
        ans = []
        ans << evaluated_nums.pop
        ans.unshift(evaluated_nums.pop)
        evaluated_nums << ans[0].send(n, ans[1])
      end
    end

    return evaluated_nums.join.to_i
  end

end

rpn = RPNCalculator.new


# 4. Refactored Solution






# Reflection
