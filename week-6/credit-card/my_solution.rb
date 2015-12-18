
# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [with: Karen Ball ].
# I spent [2] hours on this challenge.

# Pseudocode
# Input: Integers as an argument
# Output: True or False depending on if input is a valid credit card number
# Steps:
#Create CreditCard class
  #Create Initialize method
    #Accept credit card number as argument
    #Raise an error if credit card length is less than 17 digits
    #Create credit card instance variable

  #Create double_digits method
    #Starting with first digit, double every other digit
      #Create an array of single digits
      #Iterate through each element and double every other element

  #Create add_digits method
    #iterate through integer array
    #for integers greater than 9, convert to string
    #split string
    #convert back to integer
    #add up all integers

  #Create check_card method
    #IF sum is multiple of 10, RETURN true
    #ELSE return false

# Initial Solution

# class CreditCard

#   def initialize(credit_card)
#     raise ArgumentError.new("Please provide a 16 digit number") if credit_card.to_s.length != 16
#     @credit_card = credit_card
#     double_digits
#   end

#   def double_digits
#     @credit_card_array = @credit_card.to_s.split("").map! {|n| n.to_i}

#     @credit_card_array.each_with_index do |num, index|
#       if index.even? || index == 0
#         num = num * 2
#         @credit_card_array[index] = num
#       end
#     end
#     @credit_card_array
#     add_digits
#   end


#   def add_digits
#     @credit_card_array.map! do |n|
#       if n > 9
#         n.to_s.split("")
#       else
#         n = n
#       end
#     end

#     @credit_card_array = @credit_card_array.flatten
#     @credit_card_array.map! do |n|
#       n.to_i
#     end
#     @sum = @credit_card_array.inject {|sum, n| sum + n }
#     check_card
#   end

#   def check_card
#     if @sum % 10 == 0
#       return true
#     else
#       return false
#     end
#   end


# end

#DRIVER CODE
# test = CreditCard.new(4563960122001999)
# p test.double_digits
# p test.add_digits
# p test.check_card


# Refactored Solution

class CreditCard

  def initialize(credit_card)
    raise ArgumentError.new("Please provide a 16 digit number") if credit_card.to_s.length != 16
    @credit_card = credit_card
    double_digits
  end

  def double_digits
    @credit_card_array = @credit_card.to_s.split("").map! {|n| n.to_i}

    @credit_card_array.each_with_index do |num, index|
      if index.even? || index == 0
        num *= 2
        @credit_card_array[index] = num
      end
    end
    add_digits
  end


  def add_digits
    @credit_card_array.map! {|n| (n > 9 ? n.to_s.split("") : n)}

    @credit_card_array = @credit_card_array.flatten
    @credit_card_array.map! {|n| n.to_i}

    @sum = @credit_card_array.reduce(:+)
    check_card
  end

  def check_card
    @sum % 10 == 0 ? true : false
  end

end

#DRIVER CODE
# test = CreditCard.new(4563960122001999)
# p test.double_digits
# p test.add_digits
# p test.check_card


# Reflection
# What was the most difficult part of this challenge for you and your pair?
  #The most dificult part was splitting up the double digits into single digits. We were able to break it up into a lot of little steps to get it done, but we both wished we could have thought of a more succinct way of doing it. It was tricky because we had to convert the numbers to strings in order to split everything up, and then convert it all back to an integers.
# What new methods did you find to help you when you refactored?
  #The methods we used to refactor were ones I had used before. However, we did play around with using .map.with_index instead of .each_with_index. We ended up not using it but it was new to me and I can see how it might useful in a different situation.
# What concepts or learnings were you able to solidify in this challenge?
  #We spent some time looking at the differences between .each and .map. With .map, we realized that if you don't apply the block to every element in the array, you will get nil as the output. This caused us to really think about when to use .each vs .map.
