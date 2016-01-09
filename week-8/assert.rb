# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself].


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
# Create a method named 'assert'
  # Return an error statement UNLESS the provided code block is true
# Set a name variable equal to 'bettysue'
# Call the assert method passing in a code block with a true statement
# Call the assert method passing in a code block with a false statement

# 3. Copy your selected challenge here




# 4. Convert your driver test code from that challenge into Assert Statements





# 5. Reflection
