#Full name greeter:
puts "What's your first name?"
first_name = gets.chomp
puts "..and your middle name?"
middle_name = gets.chomp
puts "..and your last name?"
last_name = gets.chomp

puts "Hi #{first_name} #{middle_name} #{last_name} it's nice to meet you."

#Bigger, better favorite numer:
puts "Please tell me your favorite number."
fav_number = gets.chomp.to_i
big_number = fav_number + 1

puts "Ok so your favorite number is #{fav_number}, but #{big_number} is a bigger and better number."

=begin

- How do you define a local variable?
  You define a local variable by type the name of the variable, and equal sign, and the information you want it assigned to. This is an example of assigning local variable "name" to my own name:

  name = "Catie".

-How do you define a method?
  Here is an example of defining a method:

  def method_name(optional parameters)
    define the method here
  end

-What is the difference between a local variable and a method?
  A local variable is just an assignment of a string, number, etc. Local variables don't actually perform something like a method does. A method will actually perform actions you give it.

-How do you run a ruby program from the command line?
  You type the following in the command line:
  ruby program_name.rb

-How do you run an RSpec file from the command line?
  You type the following in the command line:
  rspec test_file_spec.rb

-What was confusing about this material? What made sense?
  It was pretty straightforwrd material and I was familiar with these concepts from studying for my DBC interview. A silly mistake I made was using "puts" instead of "return" in my make_address method which failed the tests. I need to be careful of these small mistakes that can take up a lot of time trying to find.

-Links to challenge files:
1. Define empty method challenge:
https://github.com/cstallings1/phase-0/blob/master/week-4/define-method/my_solution.rb
2. Challenge 4.3.1:
https://github.com/cstallings1/phase-0/blob/master/week-4/address/5-format-address/my_solution.rb
3. Challenge 4.3.2:
https://github.com/cstallings1/phase-0/blob/master/week-4/math/6-math-methods/my_solution.rb

=end

