# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
  # p array[3][0]
  # p array[1][1][2]
  # p array[1][1][2][0]
# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
  # p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
  # p nested_data[:array][1]
  # p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

# number_array = [5, [10, 15], [20,25,30], 35]
# number_array.map! do |n|
#  if n.is_a?(Array)
#    n.map! {|n| n + 5}
#  else
#    n + 5
#  end
# end

#REFACTORED
# number_array.map! {|n| n.is_a?(Array) ? n.map! {|n| n + 5} : n + 5}

# p number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
#INITIAL
# startup_names.map! do |name|
#  if name.is_a?(Array)
#    name.map! do |name|
#     if name.is_a?(Array)
#       name.map! do |name|
#         name + "ly"
#       end
#     else
#       name + "ly"
#     end
#   end
#  else
#   name + "ly"
#  end
# end

#REFACTORED
startup_names.map! do |name|
 if name.is_a?(Array)
  name.map! do |name|
    if name.is_a?(Array)
      name.map! {|name| name + "ly"}
    else
      name + "ly"
    end
  end
 else
  name + "ly"
 end
end

#THIS SOLUTION DOESN'T WORK BUT WAS PLAYING WITH THE IDEA OF USING A LOOP
# startup_names.each do |name|
#   name + "ly"
#   while name.is_a?(Array)
#     # if name.is_a?(Array)
#       name.map! {|name| name + "ly"}
#     # else
#       # name + "ly"
#     # end
#   end
# end

p startup_names

#REFLECTION
# What are some general rules you can apply to nested arrays?
  # When retrieving values from a nested array you apply the same principles as you would to a flat array but you add a layer each time. My pair came up with a good idea to work backwards through the array - this helped us find a value in a nested array.
# What are some ways you can iterate over nested arrays?
  # You can use the same methods you would on a flat array - .each, .map, .collect, etc. You can also use flow control to check if the item in an array is a single element or another array.
# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
  # We re-used methods we were familiar with such as .map! and .is_a(Array) to check if the element was an array. We decided to use .map! because it is a destructive method and you can add an if statement wihthin the block to check if the element is an array.

