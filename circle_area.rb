print "What is your name?"
name=gets.chomp
print "Hello, #{name}! This is a program to calculate the area of a circle. Press any key to continue."
gets
puts "Do you wish to enter the radius (r), diameter (d) or circumference (c) of the circle?"
var=gets.chomp
until var=="r" or "d" or "c"
	print "Invalid response. Please try again. Do you wish to enter the radius (r), diameter (d) or circumference (c) of the circle?"
	var=gets.chomp
end
  if var=="r"
  	puts "Please enter the unit of the radius (mm/cm/m)"
  	var_r=gets.chomp
  	puts "Please enter the radius (#{var_r})"
  	radius=gets.chomp
  elsif var=="d" 
  	puts "Please enter the unit of the diameter (mm/cm/m)"
  	var_r=gets.chomp
  	puts "Please enter the diameter (#{var_r})"
  	radius=gets.chomp
  elsif var=="c"
  	puts "Please enter the unit of the circumference (mm/cm/m)"
  	var_r=gets.chomp
  	puts "Please enter the circumference (#{var_r})"
  	radius=gets.chomp
  end


