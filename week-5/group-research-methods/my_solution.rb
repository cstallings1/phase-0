# Research Methods

# I spent [1 hr] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  filtered_array = []
  source.each do |word|
    if word.to_s.include?(thing_to_find)
      filtered_array << word
    end
  end
  return filtered_array
end


def my_hash_finding_method(source, thing_to_find)
  filtered_array = source.select {|k,v| v == thing_to_find}.keys

  return filtered_array
end

# Identify and describe the Ruby method(s) you implemented.
#.include? to check if an array element included a given letter
#.each to iterate thorugh an array.
#I used the "<<" form of push to add an element to an array.
#.select was used to select a hash value that met a given criteria.
#.keys was used to access hash keys as an array.

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#.include? is a great way to check if a string includes a given character(s). It is a string method so you would need to convert any Fixnums to a string using .to_s before applying .include?. When using this method you'll most likely be pushing the array element that meets the criteria into a new filtered array.

#The .select method returns a new hash that meets a given criteria. In my example, the value had to equal a given number for it to return true and the element to be added to the new hash. Because the instructions asked for a new array of hash keys, I had to apply .keys at the end which creates a new array of only the hash keys.


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#I learned that you really need to pay attention when searching for appropriate methods. I found a few methods that I thought would work but then I realized they changed the original array or hash instead of returning a new one. You also have to be aware of all the data types in your array and hash, at first I was getting an error when applying the .include? method on my array because it's a string method and I had integers in my array.