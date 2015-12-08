#Pseudocode
#Input: Array of cohort names (first and last name is one element) and number of groups(maybe)
#Steps:
  #Create a container that can store a student name and their assigned accountability group
  #Go through every item in the list of names and add as a key to the container
  #Assign an accountability group 1 - 14 for each person as their associated value
  #Return the container
#Output: Hash consisting of student name and their assigned accountability group



names = ["Alex Forger", "Alexander Nelson", "Karen Ball", "Christopher Bovio", "Gino Paul Capio", "Jonathan Chin", "Claire Samuels", "Ray Curran", "David Louie", "David Spivey", "Max Davis", "Devin Mandelbaum", "Afton Downey", "Jordan Fox", "Rebecca Gahart", "Gary Wong", "Hodges Glenn", "Everett Golden", "Christopher Graf", "Alana Hanson", "LeeAnne Hawley", "Sabri helal", "Thomas Huang", "Jeff Schneider", "Jillian Dunleavy", "Kevin Huang", "Khamla Phimmachack", "KT Khoo", "Andrew s Kim", "Joseph Kim", "Michal Klimek", "Nathan knockeart", "Brigitte Kozena", "Donald Lang", "Tiffany Larson", "Liam Mackey", "Johanna Lonn", "Tyler McKenzie", "Katie Meyer", "Meagan Munch", "Lucas Nagle", "Lydia Nash", "Jovanka Nikolovski", "James O'Neal", "Greg Park", "Patrick Oliphant", "Peter Lowe", "Lauren Reid", "Roche Janken", "David Rothschild", "Susan Savariar", "Kurt Schlueter", "Sharon Claitor", "Marshall Sosland", "Catie Stallings", "Steven King", "Eric Tenza", "Timur Catakli", "Todd Seller", "Dan Turcza", "Lindsey Ullman", "Raj Vashist", "Violet Dang", "Chris Wong", "Angelika Yoder", "Michelle Zulli"]

#Initial Solution
# def acct_groups(students)
#   cohort = {}
#   n = 1
#   students.each do |name|
#     cohort[name] = "Acct Group #{n}"
#     n < 14 ? n += 1 : n = 1
#   end

#   return cohort.sort_by { |k,v| v }.to_h
# end

# puts acct_groups(names)



#Add Complexity

# def acct_groups(students)
#   cohort = {}
#   n = 1
#   students.each do |name|
#     cohort[name] = "Acct Group #{n}"
#     n < 14 ? n += 1 : n = 1
#   end

#   n = 1
#   until n == 15
#     puts cohort.select {|key, value| value == "Acct Group #{n}"}
#     n += 1
#   end

# end

# puts acct_groups(names) #Output will print grouped by accountability group for better readability



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
    puts cohort.select {|key, value| value == "Acct Group #{n}"}
    n += 1
  end

end

puts acct_groups(names, 15)
