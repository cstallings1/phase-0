# Factorial

# I worked on this challenge [with Leeann Hawley ].


# Your Solution Below
def factorial(number)
  factor = 1
  counter = 1
    while counter < number
      factor *= (counter + 1)
    counter += 1
    end
    return factor
end
