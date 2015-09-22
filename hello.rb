
i = true

while i==true

puts "Enter a number between 1 and 10:"
number = gets.to_i

if number<=10 and number>=1
	puts "Valid number"
	i = false
else
	puts "Please reenter a number between 1 and 10:"

end 
	
end

