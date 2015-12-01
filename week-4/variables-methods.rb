#Full name greeter:
puts "What's your first name?"
first_name = gets.chomp
puts "..and your middle name?"
middle_name = gets.chomp
puts "..and your last name?"
last_name = gets.chomp

puts "Hi #{first_name} #{middle_name} #{last_name} it's nice to meet you."

#Bigger, better favorite numer:
puts "Please tell me your favorite number."
fav_number = gets.chomp.to_i
big_number = fav_number + 1

puts "Ok so your favorite number is #{fav_number}, but #{big_number} is a bigger and better number."
