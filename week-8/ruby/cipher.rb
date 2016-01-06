# Cipher Challenge

# I worked on this challenge [by myself]
# I spent [#] hours on this challenge. 30 min

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

# def dr_evils_cipher(coded_message)
#   # Makes all letters in coded_message lowercase and splits each char into elements in an array. Sets the array equal to input variable.
#   input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the Ruby docs.

#   # Creates an empty array and sets it to a variable decoded_sentence.
#   decoded_sentence = []

#   # Creates new hash, ciper. Sets each value to a letter from a to z. Sets each key to the letter 4 characters after the given value.
#   cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
#             "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
#             "g" => "c",
#             "h" => "d",
#             "i" => "e",
#             "j" => "f",
#             "k" => "g",
#             "l" => "h",
#             "m" => "i",
#             "n" => "j",
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}

#   # Iterates through each letter in the coded message.
#   input.each do |x| # What is #each doing here?
#     # sets found_match to false.
#     found_match = false  # Why would this be assigned to false from the outset? What happens when it's true?
#     #Iterates through each key in the ciper hash and sets key to var y.
#     cipher.each_key do |y| # What is #each_key doing here?
#       # Evaluates if the current letter in the coded message (var x) is equal to the hash key (var y).
#       if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
#         # When the coded letter equals the hash key, add the value of that key to the decoded_sentence array.
#         decoded_sentence << cipher[y]
#         # found_math is now true.
#         found_match = true
#         # Breaks out of the current loop and goes on to evaluate the next letter in the coded message.
#         break  # Why is it breaking here?
#       # Check if the coded letter is a special character as listed below.
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing?
#         # If it is, add a blank space to the decoded_sentence array.
#         decoded_sentence << " "
#         # Change found_match value to true
#         found_match = true
#         # Break out of the loop and evaluate the next letter in the coded message.
#         break
#       # Check if the current letter in the coded message is a number 1 to 9 by converting the range of numbers to an array.
#       elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do?
#         # If it is a number 1 - 9, add the number to the decoded_sentence.
#         decoded_sentence << x
#         # Change found_match value to true.
#         found_match = true
#         # Break out of the loop.
#         break
#       end # This ends the if statement.
#     end # This ends the iteration through the ciper keys.
#     # Check if the value of found_match is false.
#     if not found_match  # What is this looking for?
#       # If it is false, add the coded letter to the decoded_sentence.
#       decoded_sentence << x
#     end # End the if statement
#   end # This ends the iteration through the coded message.
#   # Join each element in the decoded_sentence array so it's a string and return string.
#   decoded_sentence = decoded_sentence.join("")
#   #What is this method returning?
# end # This ends the method

# Your Refactored Solution
def dr_evils_cipher(coded_message)

  coded_message = coded_message.downcase.split("")
  decoded_sentence = ""

  alphabet = ("a".."z").to_a
  cipher = {}
  alphabet.rotate(4).each_with_index do |l, i|
    cipher[l] = alphabet[i]
  end

  special_chars = ["@", "#", "$", "%", "^", "&", "*"]

  coded_message.each do |char|
    if cipher.has_key?(char)
      decoded_sentence += cipher[char]
    elsif special_chars.include?(char)
      decoded_sentence += " "
    else
      decoded_sentence += char
    end
  end
  decoded_sentence
end

p dr_evils_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true
# Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l")
p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.")
p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.")
p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?")




# Make Solution More Object Oriented
class Cipher
  def initialize(coded_message)
    @coded_message = coded_message.downcase.split("")
    @decoded_sentence = ""
    @special_chars = ["@", "#", "$", "%", "^", "&", "*"]
  end

  def letter_convert(n, char)
    alphabet = ("a".."z").to_a
    cipher = {}
    alphabet.rotate(n).each_with_index {|l, i| cipher[l] = alphabet[i]}

    @decoded_sentence += cipher[char] if cipher.has_key?(char)
  end

  def convert_punctuation(char)
    @decoded_sentence += " "
  end

  def translate
    @coded_message.each do |char|
      if ("a".."z").to_a.include?(char)
        letter_convert(4, char)
      elsif @special_chars.include?(char)
        convert_punctuation(char)
      else
        @decoded_sentence += char
      end
    end
    @decoded_sentence
  end
end


# Driver Test Code:
dr_evils_cipher = Cipher.new("m^aerx%e&gsoi!")
p dr_evils_cipher.translate == "i want a coke!"

dr_evils_cipher = Cipher.new("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l")
p dr_evils_cipher.translate

dr_evils_cipher = Cipher.new("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.")
p dr_evils_cipher.translate

dr_evils_cipher = Cipher.new("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.")
p dr_evils_cipher.translate

dr_evils_cipher = Cipher.new("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?")
p dr_evils_cipher.translate


# Reflection
# Keep your reflection limited to 10-15 minutes!
# What concepts did you review or learn in this challenge?
  # I reviewed iterating over hashes, control flow, and using Ruby classes.
# What is still confusing to you about Ruby?
  #I'm still trying to understand what makes a good object oriented design. I know this will come with practice but it's new to me so I'm questioning myself on if I'm structuring my classes in a way that follows the object oriented desing principals.
# What are you going to study to get more prepared for Phase 1?
  #I'm going to start reading Practical Object-Oriented Design in Ruby by Sandi Metz to get a better understanding of what makes good object oriented design.