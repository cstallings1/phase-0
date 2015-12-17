# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [8] hours on this challenge.


# Release 0: Pseudocode
# OUTLINE:
# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #Define a method called generate_number within BingoBoard class
  #Generate random letter from an array containing the letters b, i, n, g, o
  #Generate random number between 1 and 100 inclusive
  #Store the letter and number as seperate variables

# Check the called column for the number called.
  #Create a method called check_column that checks for the random number in the column corresponding to the random letter
    #IF the random letter is a B
      #Iterate through each first element inside of the board array
      #IF the number variable is in the array
          #Replace number with an "X"
    #ELSIF the random letter is an I
      #Iterate through each second element inside of the board array
      #IF the number variable is in the array
          #Replace number with an "X"
    #ELSIF the random letter is an N
      #Iterate through each third element inside of the board array
      #IF the number variable is in the array
          #Replace number with an "X"
    #ELSIF the random letter is a G
      #Iterate through each fourth element inside of the board array
      #IF the number variable is in the array
          #Replace number with an "X"
    #ELSE
      #Iterate through each fifth element inside of the board array
      #IF the number variable is in the array
          #Replace number with an "X"
    #END

# Display a column to the console
  #IF a number on the bingo board was replaced
    #Puts the updated column to the console

# Display the board to the console (prettily)
  #Print the new board to the console
    #Iterate through each element of the board array and print each element on a new line

# Initial Solution
# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#   end

#   def generate_number
#     @letter = ["b", "i", "n", "g", "o"].sample(1).join
#     @number = (1..100).to_a.sample(1).join.to_i
#     puts "The number is .... #{@letter}#{@number}"
#   end

#   def check_column
#     if @letter == "b"
#       @bingo_board.map {|n| @number == n[0] ? n[0] = "x" : n[0] = n[0]}
#     elsif @letter == "i"
#       @bingo_board.map {|n| @number == n[1] ? n[1] = "x" : n[1] = n[1]}
#     elsif @letter == "n"
#       @bingo_board.map {|n| @number == n[2] ? n[2] = "x" : n[2] = n[2]}
#     elsif @letter == "g"
#       @bingo_board.map {|n| @number == n[3] ? n[3] = "x" : n[3] = n[3]}
#     else
#       @bingo_board.map {|n| @number == n[4] ? n[4] = "x" : n[4] = n[4]}
#     end
#     puts "BINGO BOARD".center(20)
#     @bingo_board.each { |column| p column }
#   end

# end

#Refactored
# class BingoBoard

  def initialize(board)
    @bingo_board = board
    @num_array = (1..100).to_a
  end

   def generate_number
    @letter = ["b", "i", "n", "g", "o"].sample(1).join
    @number = @num_array.delete_at(rand(@num_array.length))
    puts "The number is .... #{@letter}#{@number}"
  end

  def check_column
    case @letter
    when "b"
      @bingo_board.map {|n| n[0] = "x" if @number == n[0]}
    when "i"
      @bingo_board.map {|n| n[1] = "x" if @number == n[1]}
    when "n"
      @bingo_board.map {|n| n[2] = "x" if @number == n[2]}
    when "g"
      @bingo_board.map {|n| n[3] = "x" if @number == n[3]}
    else
      @bingo_board.map {|n| n[4] = "x" if @number == n[4]}
    end
    puts "BINGO BOARD".center(20)
    @bingo_board.each { |column| p column }
  end

  def finished?
    if @num_array.empty?
      puts "All numbers have been drawn. Thanks for playing."
      exit
    end
  end

end

# #DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

puts "Welcome to BINGO!"
new_game = BingoBoard.new(board)

puts "To draw a number...press 'enter'"
puts "To quit playing...enter 'exit'"

until gets.chomp == "exit"
    new_game.generate_number
    new_game.check_column
    new_game.finished?
end


# Optional True Bingo Solution
# class BingoBoard

#   def initialize
#     @bingo_hash = {
#       b: (1..15).to_a.sample(5),
#       i: (16..30).to_a.sample(5),
#       n: (31..45).to_a.sample(4),
#       g: (46..60).to_a.sample(5),
#       o: (61..75).to_a.sample(5)
#     }
#     @bingo_hash[:n].insert(2, "x")
#     @hash_values = @bingo_hash.values.flatten
#  end

#   def generate_number
#     @letter = ["b", "i", "n", "g", "o"].sample(1).join
#     @number = @hash_values.delete_at(rand(@hash_values.length))
#     puts "The number is .... #{@letter}#{@number}"
#   end

#   def check_column
#     @bingo_hash[@letter.to_sym].map! {|num| num == @number ? num = "x" : num = num}
#   end

#   def print_board
#     puts "BINGO BOARD".center(20)
#     @bingo_board = [[],[],[],[],[]]
#     @bingo_hash.each_value do |v|
#       i = 0
#       v.each do |v|
#         @bingo_board[i] << v
#         i += 1
#       end
#     end
#     @bingo_board.each {|column| p column}
#   end

#   def finished?
#     if @hash_values.empty?
#       puts "All numbers have been drawn. Thanks for playing."
#       exit
#     end
#   end

# end

# DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE

# puts "Welcome to BINGO!"
# new_game = BingoBoard.new

# puts "To draw a number...press 'enter'"
# puts "To quit playing...enter 'exit'"

# until gets.chomp == "exit"
#     new_game.generate_number
#     new_game.check_column
#     new_game.print_board
#     new_game.finished?
# end


# #Reflection
# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
  #It wasn't too hard for me to break this problem down. I did end up adding functionality to my class that wasn't mentioned in the pseudocode because I didn't think about it until after I completed my initial solution. I think my style is organized but I think I could work on being more specific.
# What are the benefits of using a class for this challenge?
  #The bigget beneift for me was the ability to call instance variables from different methods within my class. It's also useful for creating a game and being able to call methods multiple times on one object without the game resetting every time a method is called.
# How can you access coordinates in a nested array?
  #You can access coordinates in a nested array by calling multiple indexes on the array. For example - array[0][2] would retrieve the third element within the first element of the array. You can also use iteration to evaluate nested arrays and hashes.
# What methods did you use to access and modify the array?
  #I used .sample to get a random number from an array, and I used .delete_at to remove the random number from the pool so it wouldn't get called again. To iterate through and modify the nested array (the board), I used .map.
# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
  #.delete_at was a method I had seen before but hadn't used until this challenge. It deletes a given element from an array (I used it to remove the called numbers from the pool). You would call a.delete(2) to remove the element at index 2 from the array.
# How did you determine what should be an instance variable versus a local variable?
  #I actually didn't use any local variables in this challenge because I needed to be able to call the variables from all the methods in the class.
# What do you feel is most improved in your refactored solution?
  #I think the check_column method is more readable as a case statement instead of a bunch of elsif statements. I also think the refactored version works more like a real bingo game by removing the numbers from the pool as they are called.


