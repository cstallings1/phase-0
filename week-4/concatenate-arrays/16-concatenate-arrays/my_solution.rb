# Concatenate Two Arrays

# I worked on this challenge [by myself].


# Your Solution Below
def array_concat(array_1, array_2)
  array_2.each do |x|
    array_1 << x
  end
  return array_1
end



#Refactored
def array_concat(array_1, array_2)
  return array_1.concat(array_2)
end

