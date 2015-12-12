#Pseudocode
#Input: Array of cohort names (first and last name is one element) and number of groups(maybe)
#Steps:
  #Create a container that can store a student name and their assigned accountability group
  #Go through every name in the list and add as a key to the container
  #Assign an accountability group 1 - 14 for each person as their associated value
  #Return the container
#Output: Hash consisting of student name and their assigned accountability group

#The MVP is getting a hash the effectively places students in an accountability group. The next step would be to get the output to print the data in a more readable format

names = ["Alex Forger", "Alexander Nelson", "Karen Ball", "Christopher Bovio", "Gino Paul Capio", "Jonathan Chin", "Claire Samuels", "Ray Curran", "David Louie", "David Spivey", "Max Davis", "Devin Mandelbaum", "Afton Downey", "Jordan Fox", "Rebecca Gahart", "Gary Wong", "Hodges Glenn", "Everett Golden", "Christopher Graf", "Alana Hanson", "LeeAnne Hawley", "Sabri helal", "Thomas Huang", "Jeff Schneider", "Jillian Dunleavy", "Kevin Huang", "Khamla Phimmachack", "KT Khoo", "Andrew s Kim", "Joseph Kim", "Michal Klimek", "Nathan knockeart", "Brigitte Kozena", "Donald Lang", "Tiffany Larson", "Liam Mackey", "Johanna Lonn", "Tyler McKenzie", "Katie Meyer", "Meagan Munch", "Lucas Nagle", "Lydia Nash", "Jovanka Nikolovski", "James O'Neal", "Greg Park", "Patrick Oliphant", "Peter Lowe", "Lauren Reid", "Roche Janken", "David Rothschild", "Susan Savariar", "Kurt Schlueter", "Sharon Claitor", "Marshall Sosland", "Catie Stallings", "Steven King", "Eric Tenza", "Timur Catakli", "Todd Seller", "Dan Turcza", "Lindsey Ullman", "Raj Vashist", "Violet Dang", "Chris Wong", "Angelika Yoder", "Michelle Zulli"]

#Initial Solution
def acct_groups(students)
  cohort = {}
  n = 1
  students.each do |name|
    cohort[name] = "Acct Group #{n}"
    n < 14 ? n += 1 : n = 1
  end

  return cohort.sort_by { |k,v| v }.to_h
end

puts acct_groups(names)


#Add Complexity
def acct_groups(students)
  cohort = {}
  n = 1
  students.each do |name|
    cohort[name] = "Acct Group #{n}"
    n < 14 ? n += 1 : n = 1
  end

  n = 1
  until n > 14
    puts "Accountability Group #{n}: "
    puts cohort.select {|key, value| value == "Acct Group #{n}"}.keys
    puts
    n += 1
  end
end

acct_groups(names) #Prints the output in a more organized way


# Refactored Solution
def acct_groups(students, min_group_size)
  if students.length > min_group_size
    cohort = {}
    n = 0
    students.each_slice(min_group_size) do |group|
      if group.length >= min_group_size
        cohort[n+=1] = group
      else
        group.each {|name| cohort[rand(1..cohort.keys.last)] << name}
      end
    end
    cohort.each {|k,v| puts "#{k}: #{v}"}
  end
  return students
end

acct_groups(names, 4) #Automate the number of groups created - change data structure to make each group a key and an array of names the value.

#REFLECTION:
# What was the most interesting and most difficult part of this challenge?
  #The most insteresting part was playing with different methods to see the different ways I could output the data. The most difficult part was deciding if I wanted to use an array or a hash. I started second guessing myself when I was writing the initial solution but I continued on and I like the way my program executes now.

# Do you feel you are improving in your ability to write pseudocode and break the problem down?
  #Yes - it was hard for me at first but the more I do it the better I get. This was the easiest time I've had so far writing the pseudocode.

# Was your approach for automating this task a good solution? What could have made it even better?
  #I think it was a good approach because it presents the data in an organized way and it handles the redistribution of small groups. To make this better I think it would make sense to create additional methods, maybe one to handle the redistribution of small groups and one method that would automatically remove people if you passed in their name as an argument.

# What data structure did you decide to store the accountability groups in and why?
  #I ended up using a hash with each group as a key and an array of names as the values. This combined the usefulness of a hash for associative data and the usefulness of an array for accessing values by index.

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
  #I learned the importance of choosing the right data structure. When I refactored my solution I realized I needed to let the program determine the correct number of groups. In order to add that functionality I had to use a combination of arrays within my hash.
