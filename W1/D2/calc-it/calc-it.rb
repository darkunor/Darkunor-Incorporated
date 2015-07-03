
def menu
  # Clear the screen, and present the user with a menu
  puts `clear` # couple of things are happening on this line, puts always outputs a string onto the screen, but it also always adds a new line (carriage return) after the string - equivalent of hitting 'enter' key. So here we are putting clear command on to the screen and as if hitting enter, this just clears our terminal window. 
  puts "***CalcIt***"
  print "Choose calculator (b)asic, (a)dvanced, or (q)uit: "
  gets.chomp.downcase
end

def basic_calc
  # ask the user which operation they want to perform
  print "Choose operation: (a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
  operation = gets.chomp.downcase

  print "Type first number:"
  first_number = gets.chomp.to_i

  print "Type second number:"
  second_number = gets.chomp.to_i

  result = case operation
  when 'a'
    first_number + second_number
  when 's'
    first_number - second_number
  when 'm'
    first_number * second_number
  when 'd'
    first_number / second_number
  end

  puts "The answer is: #{result}"

end

def advanced_calc
  # ask the user which operation they want to perform
  print "Choose operation: (p)ower, (s)quare root: "
  operation = gets.chomp.downcase

  print "Type first number:"
  first_number = gets.chomp.to_i

  result = case operation
  when 'p'
    print "Type second number:"
    second_number = gets.chomp.to_i
    first_number ** second_number
  when 's'
    Math.sqrt(first_number)
  end

  puts "The answer is: #{result}"

end



# running of the app...

response = menu

while response != 'q'
  case response
  when 'b'
    basic_calc
  when 'a'
    advanced_calc
  end

  # break - ask for any keystroke
  puts "Press any key to continue."
  keystroke = gets.chomp

  response = menu
end


