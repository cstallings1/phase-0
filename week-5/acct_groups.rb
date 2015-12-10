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
  n = 1r
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
  until n == 15
    puts cohort.select {|key, value| value == "Acct Group #{n}"}
    n += 1
  end
end

acct_groups(names) #Output will print grouped by accountability group for better readability



#Refactored Solution

def acct_groups(students, groups=14)
  cohort = {}
  n = 1
  students.each do |name|
    cohort[name] = "Acct Group #{n}"
    n < groups ? n += 1 : n = 1
  end

  n = 1
  until n > groups
    puts "Accountability Group #{n}: "
    puts cohort.select {|key, value| value == "Acct Group #{n}"}.keys
    puts
    n += 1
  end
end

acct_groups(names, 16) #Output will be formatted in a more readabe way

# What was the most interesting and most difficult part of this challenge?
  #The most insteresting part was playing with different methods to see the different ways I could output the data. The most difficult part was deciding if I wanted to use an array or a hash. I started second guessing myself when I was writing the initial solution but I continued on and I like the way my program executes now.

# Do you feel you are improving in your ability to write pseudocode and break the problem down?
  #Yes - it was hard for me at first but the more I do it the better I get. This was the easiest time I've had so far writing the pseudocode.

# Was your approach for automating this task a good solution? What could have made it even better?
  #I think it was a good approach because it's not too lengthy and it did a good job of outputting the same groups every time I ran the program. If I removed a few people the groups were still well balanced. To make this better I think it would make sense to create a seperate method for the printing of the list.

# What data structure did you decide to store the accountability groups in and why?
  #I ended up using a hash because I didn't want each accountability group to be completely seperate. I wanted every student to be part of one object (the cohort hash), and then assign each student a group from there.

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
  #I played around with the .sort_by and .select methods for outputting the data. I ended up using the .select method when I refactored my solution because it allowed me to present data that was more readable when printed to the console.
