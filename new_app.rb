require_relative 'dob'
#load 'items.rb'

class NewCustomer < DateOfBirth

	attr_accessor :firstname, :surname, :idNum 

	def has_digits(str)
		@str= str
		counter = false
		while counter == false
			if (str.count("0-9") > 0) == true
			puts "My spidey senses detect a number, try again "
				str = gets.to_s
			else
				counter = true
			end

		end
		return str
	end

	def id_number(id, z, idnum)
		@z = z
		@id = id
		@idnum = idnum
		idnum = Random.new
		id = idnum.rand(10000..99999)
		while z == id
			puts "Already exists, retrying."
			z =	id.rand(10000..99999)
			id = z
		end
		return id
	end
end

clients = {"eg 1000" => "JohnSmith" }
puts "Are you with a new customer (y/n)? "
newcust = gets.to_s
x = newcust.include? "n"
	if x == true
			puts "Goodbye"
	else 
		newcust = NewCustomer.new
		customerID = newcust.id_number(1, 1, 1)
		puts customerID
		item = ItemList.new

		puts "Please enter the first name of the customer? "
			firstname = gets.to_s
			fname = newcust.has_digits(firstname)
			newcust.firstname = fname

			puts "Please enter the surname of the customer? "
			surname = gets.to_s
			sname = newcust.has_digits(surname)
			newcust.surname = sname

			puts "What is the date of birth (DDMMYYYY) of the person you are talking to? "
			dob = gets.dob_to_s
			puts newcust.get_day(dob) + newcust.get_month(dob) + newcust.get_year(dob)
			
			puts "What did the customer buy? "
			bought = gets.to_s


			puts "that will be " 


				#TIME TO BUY
	end


#puts "What is the customers"