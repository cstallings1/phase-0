####What does puts do?
Puts prints the output to the console and creates a new line; it will return nil.

####What is an integer? What is a float?
An integer is a whole number and a float is a decimal.

####What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
Float division will return a decimal number while integer division will return a whole number rounding down. A good way to explain the difference is through a real life example. You have $20 to spend on pizza and each pizza costs $15. You can only buy 1 pizza because you can't purchase a fraction of a pizza. This is integer division where 20 / 15 = 1. Using float division you could specify that 20 / 15 is exactly equal to 1.3 repeating.

####Hours in a year:
```ruby
puts 24 * 365
8760
```

####Minutes in a decade:
```ruby
puts 60 * 24 * 365 * 10
5256000
```
When I checked my answer I saw that I didn't take into account leap years so I revised the program:
```ruby
puts 60 * 24 * (365 * 10 + 2)
5258880
```

####How does Ruby handle addition, subtraction, multiplication, and division of numbers?
Ruby performs these operations similarly to how a calculator would and Ruby does follow the order of operations. However, there is a difference in division. If you ask Ruby to divide two integers, you will get an integer back as the result even if the two numbers don't divide evenly. You have to specify that you want a decimal number returned by using floats in Ruby.

####What is the difference between integers and floats?
An integer is a whole number and a float is a decimal.

####What is the difference between integer and float division?
Integer division will return a whole number. If the numbers do not divide evenly, the nearest whole number rounded down will be returned. If you use float division you will get a decimal in return no matter what. Even if the division came out an even 2, Ruby would return 2.0.

####What are strings? Why and when would you use them?
Strings are sets of characters grouped together with quotation marks. A string can contain letters, numbers, special characters, blank spaces, etc.

####What are local variables? Why and when would you use them?
A local variable is a name you assign to a set of numbers or letters. For example, my_name = "Catie" sets "Catie" equal to the local variable, "my_name". Any time you puts my_name, "Catie" will be returned. Variables can be used to simplify code and add clarity. If you have a long string that you want to use over and over, you can assign it to a short variable name and save a lot of time. If you want to make changes later to that string, now all you have to do is change what the variable is set to one time.

####How was this challenge? Did you get a good review of some of the basics?
This was a great review of the basics, it wasn't too hard starting out but it got me back in the habit of writing Ruby after not having done it for a while.

####Links
- Challenge 4.2.1 Defining Variables: https://github.com/cstallings1/phase-0/blob/master/week-4/defining-variables.rb
- Challenge 4.2.2 Simple String Methods: https://github.com/cstallings1/phase-0/blob/master/week-4/simple_string.rb
- Challenge 4.2.3 Basic Math: https://github.com/cstallings1/phase-0/blob/master/week-4/basic-math.rb
