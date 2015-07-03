
def menu
  # Clear the screen, and present the user with a menu
  puts `clear` # couple of things are happening on this line, puts always outputs a string onto the screen, but it also always adds a new line (carriage return) after the string - equivalent of hitting 'enter' key. So here we are putting clear command on to the screen and as if hitting enter, this just clears our terminal window. 
  puts "***CalcIt***"
  print "Choose calculator (b)mi calculator, (m)ortgage calculator, or (t)rip calculator: "
  gets.chomp.downcase
end

def bmi
  # ask the user which operation they want to perform
  print "What is your height in meters?"
  height = gets.chomp.to_f
  print "what is your weight in kgs?"
  weight = gets.chomp.to_i

  bmi_result = weight / (height * height)

  puts "The answer is: #{bmi_result}"

end

def trip
 puts "What is your cars fuel efficency in mpg?"
 mpg = gets.chomp

 puts "What distance will you drive in miles?"
 distance = gets.chomp

 puts "How fast are you driving?"
 speed = gets.chomp
 
 price_per_gallon = mpg / distance
 

  puts "The answer is: #{price_per_gallon}"

end

def mortgage
end

# running of the app...

response = menu

while response != 'q'
  case response
  when 'b'
    bmi 
  when 'm'
    mortgage 
  when 't'
    trip 
  end

  # break - ask for any keystroke
  puts "Press any key to continue."
  keystroke = gets.chomp

  response = menu
end


