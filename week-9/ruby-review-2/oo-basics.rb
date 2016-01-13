# OO Basics: Student


# I worked on this challenge [by myself].
# This challenge took me [#] hours.


# Pseudocode
#N/A

# Initial Solution

class Student
  attr_accessor :scores, :first_name

  def initialize(args)   #Use named arguments!
    @first_name = args[:first_name]
    @scores = args[:scores]
  end

  def average
    sum = 0
    @average = 0
    @scores.each{|n| sum += n}
    @average = (sum / @scores.length)
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

# Refactored Solution






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
p linear_search(students, "NOT A STUDENT") == -1





# Reflection