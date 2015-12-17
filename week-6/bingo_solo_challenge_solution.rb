# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


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
    #Iterate through each element of the board and print each element on a new line

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

#   def initialize(board)
#     @bingo_board = board
#     @num_array = (1..100).to_a
#   end

#    def generate_number
#     @letter = ["b", "i", "n", "g", "o"].sample(1).join
#     @number = @num_array.delete_at(rand(@num_array.length))
#     puts "The number is .... #{@letter}#{@number}"
#   end

#   def check_column
#     case @letter
#     when "b"
#       @bingo_board.map {|n| n[0] = "x" if @number == n[0]}
#     when "i"
#       @bingo_board.map {|n| n[1] = "x" if @number == n[1]}
#     when "n"
#       @bingo_board.map {|n| n[2] = "x" if @number == n[2]}
#     when "g"
#       @bingo_board.map {|n| n[3] = "x" if @number == n[3]}
#     else
#       @bingo_board.map {|n| n[4] = "x" if @number == n[4]}
#     end
#     puts "BINGO BOARD".center(20)
#     @bingo_board.each { |column| p column }
#   end

#   def finished?
#     if @num_array.empty?
#       puts "All numbers have been drawn. Thanks for playing."
#       exit
#     end
#   end

# end

# #DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
# board = [[47, 44, 71, 8, 88],
#         [22, 69, 75, 65, 73],
#         [83, 85, 97, 89, 57],
#         [25, 31, 96, 68, 51],
#         [75, 70, 54, 80, 83]]

# puts "Welcome to BINGO!"
# new_game = BingoBoard.new(board)

# puts "To draw a number...press 'enter'"
# puts "To quit playing...enter 'quit'"

# until gets.chomp == "quit"
#     new_game.generate_number
#     new_game.check_column
#     new_game.finished?
# end


# Optional True Bingo Solution
# class BingoBoard

#   def initialize
#     @bingo_hash = {
#       b: (1..15).to_a.sample(5),
#       i: (16..30).to_a.sample(5),
#       n: (31..45).to_a.sample(5),
#       g: (46..60).to_a.sample(5),
#       o: (61..75).to_a.sample(5)
#     }
#  end

#   def generate_number
#     @letter = ["b", "i", "n", "g", "o"].sample(1).join
#     @number = (1..75).to_a.sample(1).join
#     puts "The number is .... #{@letter}#{@number}"
#   end

#   def check_column
#     @bingo_hash[@letter.to_sym].map! {|num| num == @number ? num = "x" : num = num}

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

# end

#There is no free space yet - I haven't gotten to that part

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE

# puts "Welcome to BINGO!"
# new_game = BingoBoard.new

# puts "To draw a number...press 'enter'"
# puts "To quit playing...enter 'quit'"

# until gets.chomp == "quit"
#     new_game.generate_number
#     new_game.check_column
# end


#Reflection



