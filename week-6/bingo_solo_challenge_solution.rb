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

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def generate_number
    @rand_number = [["b", "i", "n", "g", "o"].sample(1), rand(1..100)]
    puts "The number is .... #{@rand_number.join()}"
  end

  def check_column
    if @rand_number.include?("b")
      @bingo_board.map {|n| @rand_number[1] == n[0] ? n[0] = "x" : n[0] = n[0]}
    elsif @rand_number.include?("i")
      @bingo_board.map {|n| @rand_number[1] == n[1] ? n[1] = "x" : n[1] = n[1]}
    elsif @rand_number.include?("n")
      @bingo_board.map {|n| @rand_number[1] == n[2] ? n[2] = "x" : n[2] = n[2]}
    elsif @rand_number.include?("g")
      @bingo_board.map {|n| @rand_number[1] == n[3] ? n[3] = "x" : n[3] = n[3]}
    else
      @bingo_board.map {|n| @rand_number[1] == n[4] ? n[4] = "x" : n[4] = n[4]}
    end
    puts "BINGO BOARD".center(20)
    @bingo_board.each { |column| p column }
  end

end

# Refactored Solution
class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def generate_number
    @rand_number = [["b", "i", "n", "g", "o"].sample(1), rand(1..100)]
    puts "The number is .... #{@rand_number.join()}"
  end

  def check_column
    if @rand_number.include?("b")
      @bingo_board.map {|n| @rand_number[1] == n[0] ? n[0] = "x" : n[0] = n[0]}
    elsif @rand_number.include?("i")
      @bingo_board.map {|n| @rand_number[1] == n[1] ? n[1] = "x" : n[1] = n[1]}
    elsif @rand_number.include?("n")
      @bingo_board.map {|n| @rand_number[1] == n[2] ? n[2] = "x" : n[2] = n[2]}
    elsif @rand_number.include?("g")
      @bingo_board.map {|n| @rand_number[1] == n[3] ? n[3] = "x" : n[3] = n[3]}
    else
      @bingo_board.map {|n| @rand_number[1] == n[4] ? n[4] = "x" : n[4] = n[4]}
    end
    puts "BINGO BOARD".center(20)
    @bingo_board.each { |column| p column }
  end

  def bingo?

  end

end



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.generate_number
new_game.check_column







#Reflection


