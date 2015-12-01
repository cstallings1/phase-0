# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [1] hour 10 min. on this challenge.

# --- error -------------------------------------------------------

# cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

# def cartman_hates(thing)
#   while true
#     puts "What's there to hate about #{thing}?"
#   end
# end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# The name of the file is errors.rb
# 2. What is the line number where the error occurs?
# Line number 170
# 3. What is the type of error message?
# This error is a syntax error.
# 4. What additional information does the interpreter provide about this type of error?
# It was expecting the word "end".
# 5. Where is the error in the code?
# The error is after line 15 where there should be an 'end' to the while loop.
# 6. Why did the interpreter give you this error?
# Ruby requires you to specify when to end an action. This includes adding 'end' to methods, loops, etc.

# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
# The error is in line number 36.
# 2. What is the type of error message?
# It's a NameError.
# 3. What additional information does the interpreter provide about this type of error?
# It tells us that 'south_park' is an undefined local variable or method, it was never defined in the program.
# 4. Where is the error in the code?
# The error is in line 36, 'south_park' needs to be defined as a variable or method. It could also be deleted if it's not needed.
# 5. Why did the interpreter give you this error?
# Ruby doesn't allow words to be included in the program if they aren't assigned to anything. This helps to keep the code logical and organized.

# --- error -------------------------------------------------------

# def cartman()
# end

# 1. What is the line number where the error occurs?
# Line number 51.
# 2. What is the type of error message?
# It's called a NoMethodError.
# 3. What additional information does the interpreter provide about this type of error?
# It explains that 'carman()' is not a valid method, it is missing the 'def' and 'end' that would make it a valid method.
# 4. Where is the error in the code?
# The error is line 51 and 52 where you add 'def' in line 51 and 'end' on line 52.
# 5. Why did the interpreter give you this error?
# Ruby only allows method to be written a certain way, they must include 'def' and 'end' at the very least.

# --- error -------------------------------------------------------

# def cartmans_phrase
#   puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase

# 1. What is the line number where the error occurs?
# Line number 67.
# 2. What is the type of error message?
# It's an ArgumentError.
# 3. What additional information does the interpreter provide about this type of error?
#  The method doesn't take any parameters but when the method is called on line 71 it's providing an argument.
# 4. Where is the error in the code?
# The error is in line 67 or 71. You could either add a parameter to the method or remove the argument when the method is called on line 71.
# 5. Why did the interpreter give you this error?
# Ruby requeires the number of arguments in the method to match the number of parameters in the corresponding method.

# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
#   puts offensive_message
# end

# cartman_says("Respect my authoritah!")

# 1. What is the line number where the error occurs?
# Line number 86.
# 2. What is the type of error message?
# It's an ArgumentError.
# 3. What additional information does the interpreter provide about this type of error?
# This time the method expects one argument to be passed to it, but no arguments are passed when the method is called in line 90.
# 4. Where is the error in the code?
# There error is either in line 86 or 90, you could remove the parameter from the method or add an argument when the method is called on line 90.
# 5. Why did the interpreter give you this error?
# It's the same reason as before just reversed. The number of parameters in a method and arguments passed much match.



# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'Kyle')

# 1. What is the line number where the error occurs?
# Line number 107.
# 2. What is the type of error message?
# It's an ArgumentError.
# 3. What additional information does the interpreter provide about this type of error?
# Again it's the wrong number of arguments, one agrument was provided when the method expected two.
# 4. Where is the error in the code?
# The error is in line 111 where it's missing the second argument or in line 107 where you could remove the last parameter.
# 5. Why did the interpreter give you this error?
# The number of parameters did not match the number of arguments passed.

# --- error -------------------------------------------------------

# "Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# Line 126.
# 2. What is the type of error message?
# It's a TypeError.
# 3. What additional information does the interpreter provide about this type of error?
# We are trying to multiply the Fixnum 5 by a string, this isn't possible.
# 4. Where is the error in the code?
# The error is line 126 where we need to change the order of the Fixnum and string. We can multiply the string by 5 if we change the order.
# 5. Why did the interpreter give you this error?
# Ruby reads left to right which would be the same as taking the number 5 multiplied by a string which isn't possible.

# --- error -------------------------------------------------------

# amount_of_kfc_left = 0/20


# 1. What is the line number where the error occurs?
# Line number 141.
# 2. What is the type of error message?
# It's a ZeroDivisionError.
# 3. What additional information does the interpreter provide about this type of error?
# It's telling us there is an issue with dividing by zero.
# 4. Where is the error in the code?
# The error is in line 141, 20 divided by 0 is infinity so we would need to make the equation valid, we could change it to '0/20'.
# 5. Why did the interpreter give you this error?
# Ruby performs math like a calculator. If you type '20/0' into a calculator you will get an error becuase it can't display infinity as a number; this is essentially what Ruby is doing.

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# Line 157.
# 2. What is the type of error message?
# It's a require_relative load error.
# 3. What additional information does the interpreter provide about this type of error?
#  The error message is telling us we can't load the "cartmans_essay.md" file because it doesn't exist in the relative file path we gave it.
# 4. Where is the error in the code?
# The error is due to the fact that we don't have a file called "cartmans_essay.md" to load. We would have to add a file with that name to our current directory or remove this line altogether to get rid of the error.
# 5. Why did the interpreter give you this error?
# We told the program to require a file that doesn't exist and the interpreter is letting us know this. It can't load a file that isn't there.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin

-Which error was the most difficult to read?
The first error was most difficult to read because the line number it provided as the issue was the last line of the program. I understand why but it's not as straight forward as other errors.

-How did you figure out what the issue with the error was?
The error message mentioned the method name so I knew I should be inspecting the method looking for a syntax error.

-Were you able to determine why each error message happened based on the code?
Yes, I was able to figure out why each error happened.

-When you encounter errors in your future code, what process will you follow to help you debug?
I'll start with reading the error message and just figure out what it's trying to tell me, then I'll go to the line given in the error message and start there looking for the error.

=end
