# Leap Years

# I worked on this challenge [with Liam Mackey].


# Your Solution Below
def leap_year?(year)
  ans = nil
  if year % 4 == 0
    if year % 100 == 0
      if year % 400 == 0
        ans = true
      else
        ans = false
      end
    else
      ans = true
    end
  else
    ans = false
  end
  return ans
end