# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# OUTLINE:
# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #Define a method called generate_number within BingoBoard class
  #Generate random letter from an array containing the letters b, i, n, g, o
  #Generate random number between 1 and 100 inclusive
  #Store the letter and number as a variable

# Check the called column for the number called.
  #Create a method called check_column

# If the number is in the column, replace with an 'x'
  #IF the random letter is a B
    # Iterate through each first array element inside of the board array
    # IF the number variable is in the array
        # Replace number with an "X"
  #ELSIF the random letter is a I
    # Iterate through each second array element inside of the board array
    # IF the number variable is in the array
        # Replace number with an "X"
  #ELSIF the random letter is a N
    # Iterate through each third array element inside of the board array
    # IF the number variable is in the array
        # Replace number with an "X"
  #ELSIF the random letter is a G
    # Iterate through each fourth array element inside of the board array
    # IF the number variable is in the array
        # Replace number with an "X"
  #ELSIF the random letter is a O
    # Iterate through each fifth array element inside of the board array
    # IF the number variable is in the array
        # Replace number with an "X"
  #END

# Display a column to the console
  #IF a number on the bingo board was replaced
    #Puts the updated column to the console

# Display the board to the console (prettily)
  #print the revised board to the console

# Initial Solution
# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#   end

#   def generate_number
#     @letter = ["b", "i", "n", "g", "o"].sample(1).join
#     @number = (1..100).to_a.sample(1).join
#     puts "The number is .... #{@letter}#{@number}"
#   end

#   def check_column
#     if @letter[0].include?("b")
#       @bingo_board.map {|n| @number[0] == n[0] ? n[0] = "x" : n[0] = n[0]}
#     elsif @letter[0].include?("i")
#       @bingo_board.map {|n| @number[0] == n[1] ? n[1] = "x" : n[1] = n[1]}
#     elsif @letter[0].include?("n")
#       @bingo_board.map {|n| @number[0] == n[2] ? n[2] = "x" : n[2] = n[2]}
#     elsif @letter[0].include?("g")
#       @bingo_board.map {|n| @number[0] == n[3] ? n[3] = "x" : n[3] = n[3]}
#     else
#       @bingo_board.map {|n| @number[0] == n[4] ? n[4] = "x" : n[4] = n[4]}
#     end
#     puts "BINGO BOARD".center(20)
#     @bingo_board.each { |column| p column }
#   end

# end

#Refactored
# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#   end

#   def generate_number
#     @letter = ["b", "i", "n", "g", "o"].sample(1).join
#     @number = (1..100).to_a.sample(1).join
#     puts "The number is .... #{@letter}#{@number}"
#   end

#   def check_column
#     if @letter[0].include?("b")
#       @bingo_board.map {|n| @number[0] == n[0] ? n[0] = "x" : n[0] = n[0]}
#     elsif @letter[0].include?("i")
#       @bingo_board.map {|n| @number[0] == n[1] ? n[1] = "x" : n[1] = n[1]}
#     elsif @letter[0].include?("n")
#       @bingo_board.map {|n| @number[0] == n[2] ? n[2] = "x" : n[2] = n[2]}
#     elsif @letter[0].include?("g")
#       @bingo_board.map {|n| @number[0] == n[3] ? n[3] = "x" : n[3] = n[3]}
#     else
#       @bingo_board.map {|n| @number[0] == n[4] ? n[4] = "x" : n[4] = n[4]}
#     end
#     puts "BINGO BOARD".center(20)
#     @bingo_board.each { |column| p column }
#   end

# end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
# board = [[47, 44, 71, 8, 88],
#         [22, 69, 75, 65, 73],
#         [83, 85, 97, 89, 57],
#         [25, 31, 96, 68, 51],
#         [75, 70, 54, 80, 83]]

# puts "Welcome to BINGO!"
# new_game = BingoBoard.new(board)

# puts "To draw a number...enter 'draw'"
# puts "To quit playing...enter 'quit'"

# until gets.chomp == "quit"
#     new_game.generate_number
#     new_game.check_column
# end

# Optional True Bingo Solution
class BingoBoard

  def initialize
    @bingo_hash = {
      b: (1..15).to_a.sample(5),
      i: (16..30).to_a.sample(5),
      n: (31..45).to_a.sample(5),
      g: (46..60).to_a.sample(5),
      o: (61..75).to_a.sample(5)
    }
 end

  def generate_number
    @letter = ["b", "i", "n", "g", "o"].sample(1).join
    @number = (1..75).to_a.sample(1).join
    # @letter = 'b'
    # @number = 1
    puts "The number is .... #{@letter}#{@number}"
  end

  def check_column
    @bingo_hash[@letter.to_sym].map! {|num| num == @number ? num = "x" : num = num}

    puts "BINGO BOARD".center(20)
    @bingo_board = [[],[],[],[],[]]
    @bingo_hash.each_value do |v|
      i = 0
      v.each do |v|
        @bingo_board[i] << v
        i += 1
      end
    end
    @bingo_board.each {|column| p column}
  end

end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
# board = [[47, 44, 71, 8, 88],
#         [22, 69, 75, 65, 73],
#         [83, 85, 97, 89, 57],
#         [25, 31, 96, 68, 51],
#         [75, 70, 54, 80, 83]]

puts "Welcome to BINGO!"
new_game = BingoBoard.new

puts "To draw a number...enter 'draw'"
puts "To quit playing...enter 'quit'"

until gets.chomp == "quit"
    new_game.generate_number
    new_game.check_column
end


#Reflection

# @bingo_hash = {
#       b: [@bingo_board[0][0], @bingo_board[1][0], @bingo_board[2][0], @bingo_board[3][0], @bingo_board[4][0]],
#       i: [@bingo_board[0][1], @bingo_board[1][1], @bingo_board[2][1], @bingo_board[3][1], @bingo_board[4][1]],
#       n: [@bingo_board[0][2], @bingo_board[1][2], @bingo_board[2][2], @bingo_board[3][2], @bingo_board[4][2]],
#       g: [@bingo_board[0][3], @bingo_board[1][3], @bingo_board[2][3], @bingo_board[3][3], @bingo_board[4][3]],
#       o: [@bingo_board[0][4], @bingo_board[1][4], @bingo_board[2][4], @bingo_board[3][4], @bingo_board[4][4]]
#     }





