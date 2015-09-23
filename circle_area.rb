def is_number? string
  true if Float(string) rescue false
end

def get_inputs(var)
  case
    when var=="r"
    @full = "radius"
    when var=="d"
    @full = "diameter"
    when var=="c"
    @full = "circumference"
    else return
  end
  puts "Please enter the unit of the #{@full} (mm/cm/m)\n"
  @units=gets.chomp
  
  until (@units == "mm" or @units == "cm" or @units == "m")
    puts "Invalid units. Please try again.\n"
    @units=gets.chomp
  end
  puts "OK cool. Now enter the #{@full} of the circle in #{@units}:\n"
  @input=gets.chomp.to_f
  until @input > 0.0
   puts "Hmm, it looks like that's not a valid response. Please try again.\n"
   @input=gets.chomp.to_f
  end
  return
end

def calculate_area(var,input,units)
   case
   when var=="r"
      @area = 3.14159 * @input * @input
   when var=="d"
      @area = 3.14159 * 0.25 * @input * @input
   when var=="c"
      @area = 3.14159 * (@input/(2 * 3.14159)) ** 2
   end
end

print "What is your name?\n"
name=gets.chomp
try_again="y"
until try_again == "n"
print "Hello, #{name}! This is a program to calculate the area of a circle. Press enter to continue.\n"
gets
puts "Do you wish to enter the radius (r), diameter (d) or circumference (c) of the circle?\n"
var=gets.chomp

  until (var == "r" or var == "d" or var == "c")
  print "Invalid response. Please try again. Do you wish to enter the radius (r), diameter (d) or circumference (c) of the circle?\n"
  var=gets.chomp
  end

get_inputs(var)
response="n"
puts "OK, #{name}. So the #{@full} you entered is #{@input} #{@units}? (y/n)\n"
response=gets.chomp
until response=="y"
  puts "Damn. OK, let's try again. Do you wish to enter the radius (r), diameter (d) or circumference (c) of the circle?\n"
  var=gets.chomp

  until (var == "r" or var == "d" or var == "c")
  print "Invalid response. Please try again. Do you wish to enter the radius (r), diameter (d) or circumference (c) of the circle?\n"
  var=gets.chomp
  end

get_inputs(var)

puts "OK, #{name}. So the #{@full} you entered is #{@input} #{@units}? (y/n)\n"
response=gets.chomp

end

puts "Sweet! Let me just crunch the numbers...\n"
input=@input
units=@units
calculate_area(var,input,units)
rounded = '%.2f' % @area 
print "The area of your circle is #{rounded} #{@units}^2.\n"
print "Would you like to try again? (y/n)\n"
try_again=gets.chomp

end

print "Goodbye, #{name}. Have a nice day!\n"

