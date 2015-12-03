# Calculate a Grade

# I worked on this challenge [with: Liam Mackey ].


# Your Solution Below
def get_grade(num)
  grade = nil
  if num >= 90
    grade = "A"
  elsif num >= 80
    grade = "B"
  elsif num >= 70
    grade = "C"
  elsif num >= 60
    grade = "D"
  else
    grade = "F"
  end
  return grade
end
