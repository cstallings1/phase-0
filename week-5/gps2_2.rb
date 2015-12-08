# Method to print a list and make it look pretty
# input: grocery list
# steps:
  #Puts each key value pair to the console formatted with a colon and space between key and value
# output: Formatted grocery list

#INITIAL SOLUTION
def print_list(list)
  list.each {|k,v| puts "#{k}: #{v}"}
end

#REFACTORED SOLUTION
def print_list(list)
  puts "---------------"
  puts "Grocery List:"
  puts "---------------"
  list.each {|k,v| puts "#{k}: #{v}"}
end

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples  cereal pizza")
# steps:
  # Create container
  # Add each word to the container, each word is separated by a space
  # Set each word as a key in a hash
  # set default quantity of each item to 1
  # print the list to the console [use print method..to be created]
# output: output data will be a hash

#INITIAL SOLUTION
def create_list(items, qty=1)
  items = items.split(" ")
  list = Hash.new

  items.each do |item|
    if list.has_key?(item)
      list[item] += qty
    elsif
      list[item] = qty
    end
  end

  return list.each {|k,v| puts "#{k}: #{v}"}
end

#REFACTORED SOLUTION
def create_list(items, qty=1)
  items = items.downcase.split(" ")
  list = Hash.new

  items.each do |item|
    list.has_key?(item) ? list[item] += qty : list[item] = qty
  end

  print_list(list)
end

grocery_list = create_list("")

# Method to add an item to a list
# input: grocery list, item name, and optional quantity
# steps:
  #Add new item and qty or default qty 1  as key and value to existing grocery list hash
  # If new item already exists in list do not add that item
  # Print added items to the console
# output: added items

#INITIAL SOLUTION
def add_item(list, item, qty=1)
  if !list.has_key?(item)
    list[item] = qty
  end

  return list.each {|k,v| puts "#{k}: #{v}"}
end

#REFACTORED SOLUTION
def add_item(list, item, qty=1)
  if !list.has_key?(item)
    list[item] = qty
  end
  puts "#{item} has been added."
end

add_item(grocery_list, "Lemonade", 2)
add_item(grocery_list, "Tomato", 3)
add_item(grocery_list, "Onion", 1)
add_item(grocery_list, "Ice Cream", 4)

# Method to remove an item from the list
# input: grocery list, item name
# steps:
  #Remove item from existing grocery list hash
  #Print removed items to console
# output: removed items

#INITIAL SOLUTION
def remove_item(list, item)
  list.delete(item)
  return list.each {|k,v| puts "#{k}: #{v}"}
end

#REFACTORED SOLUTION
def remove_item(list, item)
  list.delete(item)
  puts "#{item} has been removed."
end

remove_item(grocery_list, "Lemonade")

# Method to update the quantity of an item
# input: grocery list, item name, quantity
# steps:
  #Find the item in the original grocery list
  #Update the value of that key to use the new quantity
  #If item is not in the original list, do not update the quantity. Don't add to list
# output: updated item

# INITIAL SOLUTION
def update_qty(list, item, qty)
  if list.has_key?(item)
    list[item] = qty
  end
  return list.each {|k,v| puts "#{k}: #{v}"}
end

# #REFACTORED SOLUTION
def update_qty(list, item, qty)
  if list.has_key?(item)
    list[item] = qty
  end
  puts "#{item} has been updated."
end

update_qty(grocery_list, "Ice Cream", 1)

print_list(grocery_list)

# What did you learn about pseudocode from working on this challenge?
  #I learned not to make too many assumptions in my pseudocode. As I was writing the pseudocode my guide was encouraging me to be a little more explicit in what I wanted to do.
# What are the tradeoffs of using Arrays and Hashes for this challenge?
  #The advantage to using a hash for the grocery list is that you can easily retrieve or update a value by using the name of the key, which would be the item. This is more intuitive that trying to call an index of an array - that doesn't hold much meaning in a grocery list. I did use an array when I needed to quickly seperate words in a string into different elements. You can quickly and easily manipulate data using arrays.
# What does a method return?
  #A method returns the last line of the method, this is the output. Most of my methods return a puts statement, which is printing to the console but actually returning nil.
# What kind of things can you pass into methods as arguments?
  #You can pass strings, numbers, arrays, hashes, etc as arguments to methods.
# How can you pass information between methods?
  #You can create a variable outside of all methods that holds the return value for a method. Then you can use that variable as an argument for another method. This transfers the information from one method to another.
# What concepts were solidified in this challenge, and what concepts are still confusing?
  #I have a much better understanding of how to pass information from one method to another without the use of classes. This was a little hard for me to wrap my mind around at first, but once I started refactoring the code I was able to think it through again and understand the concept better. I am also more comfortable manipulating hashes now.


