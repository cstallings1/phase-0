require 'pry-byebug'
# OO Basics: Student


# I worked on this challenge [by myself].
# This challenge took me [#] hours.


# Pseudocode
#N/A

# Initial Solution

# class Student
#   attr_accessor :scores, :first_name

#   def initialize(args)   #Use named arguments!
#     @first_name = args[:first_name]
#     @scores = args[:scores]
#   end

#   def average
#     sum = 0
#     @average = 0
#     @scores.each{|n| sum += n}
#     @average = (sum / @scores.length)
#   end

#   def letter_grade
#     @letter_grade = ""
#     if @average >= 90
#       @letter_grade = "A"
#     elsif @average >= 80
#       @letter_grade = "B"
#     elsif @average >= 70
#       @letter_grade = "C"
#     elsif @average >= 60
#       @letter_grade = "D"
#     else
#       @letter_grade = "F"
#     end
#   end

# end

# alex = Student.new({:first_name => "Alex", scores: [100, 100, 100, 0, 100]})
# catie = Student.new({:first_name => "Catie", scores: [100, 100, 90, 89, 80]})
# devin = Student.new({:first_name => "Devin", scores: [90, 100, 100, 85, 99]})
# dan = Student.new({:first_name => "Dan", scores: [89, 95, 100, 100, 90]})
# maryjane = Student.new({:first_name => "Mary Jane", scores: [100, 90, 80, 95, 100]})

# students = [alex, catie, devin, dan, maryjane]

# def linear_search(array, name)
#   search_array = array.map {|name| name.first_name}
#   search_array.each_with_index do |n, i|
#     if n == name
#       return i
#     end
#   end
#   return -1
# end

# def binary_search(array, name)
#   name_array = array.map {|n| n.first_name}
#   sorted_array = name_array.sort {|a, b| a <=> b }

#   min = 0
#   max = sorted_array.length - 1
#   while (min <= max)
#   mid = (min + max) / 2
#     if sorted_array[mid] == name
#       return mid
#     elsif sorted_array[mid] < name
#       min = mid + 1
#     else
#       max = mid - 1
#     end
#   end
#   return -1
# end

# Refactored Solution
class Student
  attr_accessor :scores, :first_name, :letter_grade

  def initialize(args)
    @first_name = args[:first_name]
    @scores = args[:scores]
  end

  def average
    @average = @scores.reduce(:+) / @scores.length
  end

  def letter_grade
    @letter_grade = ""
    if @average >= 90
      @letter_grade = "A"
    elsif @average >= 80
      @letter_grade = "B"
    elsif @average >= 70
      @letter_grade = "C"
    elsif @average >= 60
      @letter_grade = "D"
    else
      @letter_grade = "F"
    end
  end

end

alex = Student.new({:first_name => "Alex", scores: [100, 100, 100, 0, 100]})
catie = Student.new({:first_name => "Catie", scores: [100, 100, 90, 89, 80]})
devin = Student.new({:first_name => "Devin", scores: [90, 100, 100, 85, 99]})
dan = Student.new({:first_name => "Dan", scores: [89, 95, 100, 100, 90]})
maryjane = Student.new({:first_name => "Mary Jane", scores: [100, 90, 80, 95, 100]})

students = [alex, catie, devin, dan, maryjane]

def linear_search(array, name)
  search_array = array.map {|name| name.first_name}
  search_array.each_with_index {|n, i| return i if n == name}
  return -1
end


def binary_search(array, name, min=0, max=array.length - 1)
  name_array = array.map {|n| n.first_name}
  sorted_array = name_array.sort {|a, b| a <=> b }

  if max < min
    return -1
  else
    mid = (min + max) / 2
    if sorted_array[mid] > name
      binary_search(array, name, min, mid - 1)
    elsif sorted_array[mid] < name
      binary_search(array, name, mid + 1, max)
    else
      return mid
    end
  end
end


# DRIVER TESTS GO BELOW THIS LINE
# Initial Tests:

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0


# Additional Tests 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# Additional Tests 2:

p linear_search(students, "Alex") == 0
p linear_search(students, "Catie") == 1
p linear_search(students, "NOT A STUDENT") == -1

p binary_search(students, "Catie") == 1
p binary_search(students, "Alex") == 0
p binary_search(students, "Dan") == 2
p binary_search(students, "Devin") == 3
p binary_search(students, "Mary Jane") == 4
p binary_search(students, "NOT A STUDENT") == -1

