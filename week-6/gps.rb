# Your Names
# 1)Catie Stallings
# 2)Katy Duncan

# We spent [1] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_to_serve)
  menu = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  raise ArgumentError.new("#{item_to_make} is not a valid menu item.") if !menu.has_key?(item_to_make)

  serving_size = menu[item_to_make]
  remaining_to_serve = num_to_serve % serving_size

  if remaining_to_serve == 0
    return "Calculations complete: You served #{num_to_serve / serving_size} #{item_to_make}(s)"
  else
    return "Calculations complete: You served #{(num_to_serve / serving_size) + 1} #{item_to_make}s, you have #{serving_size - remaining_to_serve} servings leftover."
  end

end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

# Reflection
# What did you learn about making code readable by working on this challenge?
  # I learned how important it is for the other people that will have to work with your code at some point. It was very hard to to make sense of what the program was trying to do just because of some poorly named variables in the original code.
# Did you learn any new methods? What did you learn about them?
  # I didn't learn any new methods but I did have to research Ruby Docs to pick the right method to check for an existing key - I ended up using .has_key?.
# What did you learn about accessing data in hashes?
  # I learned that you can easily check if there is an existing key by using .has_key? I was also reminded of the fact that if you point a variable to the hash key, the variable will be set to the value of the key, not the key itself.
# What concepts were solidified when working through this challenge?
  # Reading through the poorly written code really forced me to think about the basics. For example, I know that all you have to do to access a hash value is write 'hash[key]', but because the original code accessed the value in such a convaluted way, I started thinking too hard about a better way to write it when the answer was simple.