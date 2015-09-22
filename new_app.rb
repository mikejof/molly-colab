class ItemList
@menu = {"Television" => 1200,
		"Laptop" => 1500,
		"GPS Watch" => 200,
		"Keyboard" => 50,
		"A Life" => "You shall never have one...."}

def add_item(menu, key, price)
	@key = key
	@price = price
	@menu = menu
	new_item = {key => price} 
	menu = menu.update(new_item)
	return menu
end


def remove_item(menu)
	@menu = menu
		puts "What is the name of the item you want to remove? "
		itemname = gets.chomp.to_s
		menu.delete(itemname)
		return menu
end

def display_items(menu)
	puts menu
end
end


class DateOfBirth < ItemList
@year 
@month
@day

	def is_number(doo)
		@doo = doo
   		!!(doo =~ /\A[-+]?[0-9]+\z/)
	end

	def get_year(year)
		@year = year
		year = year[4] + year[5] + year[6] + year[7]
		year = year.to_i
		return year
	end

	def get_month(month)
			@month = month
			month_integer = month[2] + month[3]
			month_integer = month_integer.to_i
		case month_integer
			when 1
				month = "January"
				return month
			when 2
				month = "February"
				return month
			when 3 
				month = "March"
				return month
			when 4 
				month = "April"
				return month
			when 5 
				month = "May"
				return month
			when 6
				month = "June"
				return month
			when 7
				month = "July"
				return month
			when 8
				month = "August"
				return month
			when 9
				month = "September"
				return month
			when 10
				month = "October"
				return month
			when 11
				month = "November"
				return month
			when 12
				month = "December"
				return month
			else
				return "Try again"
			end
	end
	def range_(num1, num2, input_integer)
			@num1 = num1
			@num2 = num2
			@str_input = str_input.to_i
			new_string = str_input.class.to_s
				
				if str_input <= num2 && str_input >= num1
					return true
				else
					return false
				end
	end

def get_day(day)
				@day = day
				days = day[0] + day [1]
				day_integer = days.to_i
				month = day[2] + day[3]
				month = month.to_i
				year = day[6] + day[7]
				year = year.to_i
				is_leapyear = year % 4
				is_true = day_integer.between?(1, 28) 
				is_truetn = day_integer.between?(1,29) 
				is_truet = day_integer.between?(1,30)
				is_true_to = day_integer.between?(1, 31) 

		if month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month ==12
				case is_true_to
			when true
				return day_integer
					i = false
			when false
				return "Try again"
			end

		elsif month == 2 
				if is_leapyear == 0
					if is_truetn == true
						return day_integer
					else 
						return "Try again"
					end
				else
					if is_true == true
						return day_integer
					else 
						return "Try again"
					end
				end
			
		 #elsif month == 2 && is_true == true
		#		return day_test
		#elsif month == 2 && is_true == false
		#		return "Try again"
				
		else 
			case is_truet
			when true
				return day_integer
			else
				return "Try again" 
			end
		end

end 

def date_ok(dob)
	@dob = dob
	i =true
		while i == true
				dob_length = dob.length
				dob_test = DateOfBirth.new.is_number(dob)
			
			if (dob_length == 8 && dob_test == true)
				
				dob_range = dob[4] + dob[5] + dob[6] + dob[7]
				dob_range = dob_range.to_i
				dob_range = dob_range.between?(1900, 2020) 
			
				
				if dob_range == false
					return "Try again"

				else
					i = false
					return dob
				end
				
			else
					return "Try again"

			end	

		end	
	
end

end
class NewCustomer < DateOfBirth

	attr_accessor :firstname, :surname, :idNum, :dob 

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
		date_ob = DateOfBirth.new

		item = ItemList.new

		menu = {"Television" => 1200,
		"Laptop" => 1500,
		"GPS Watch" => 200,
		"Keyboard" => 50,
		"A Life" => "You shall never have one...."}

		puts "Please enter the first name of the customer? \n \n \n"
			firstname = gets.to_s
			puts "\n \n"
			fname = newcust.has_digits(firstname)
			newcust.firstname = fname

			puts "Please enter the surname of the customer? \n\n\n"
			surname = gets.to_s
			puts "\n \n"
			sname = newcust.has_digits(surname)
			newcust.surname = sname

			puts "What is the date of birth (DDMMYYYY) of the person you are talking to? \n \n \n"
							i = true
			while i == true
							date = gets.chomp.to_s
								puts "\n \n"
						if date.length == 8
								date_ok = date_ob.date_ok(date)
								date_day = date_ob.get_day(date).to_s
								date_month =  date_ob.get_month(date).to_s
								date_year = date_ob.get_year(date).to_s

								if (date_ok.include? "Try again") == false && (date_month.include? "Try again") == false && (date_day.include? "Try again") == false
									puts date_day + " " + date_month + " " + date_year + "\n \n" 
									i = false
				
						else 
								puts "Try again \n \n"
						end

					else
				puts "Try again \n \n"
			end
			end

							date = date_day + " " + date_month + " " + date_year
								newcust.dob = date
							
			#puts newcust.get_day(dob) + newcust.get_month(dob) + newcust.get_year(dob)
			x = true
			puts "What did the customer buy? \n \"menu\" for menu \n "
			bought = gets.chomp.to_s
			puts "\n \n"
			while x == true
				if menu.has_key?(bought) == true
						total = menu[bought]
						x =false
					elsif bought == "menu"
						puts menu
						x = false
					elsif bought.include? "exit"
						d = true
						x = false
					else
						puts "Not on our list, buddy\n"
						x = false
					end
				end
				x = true
				if d == true
					puts "\n \n OR \n \n"
				else
				while x == true
						puts "What else? \n \"exit\" to exit\n"
							bought = gets.chomp.to_s
							puts "\n \n"
							if menu.has_key?(bought) == true
									total += menu[bought]
							elsif bought == "exit" 
									x = false
									puts "That is a grand total of:"
									puts "\n \n" 
									puts total
									puts "\n \n" 
							else
									puts "Try again!\n"
							end
				end
			end


				x = true
				while x == true
							puts "Would you like to add a new item to the menu? y - to add\n"
							new_item_y_n = gets.to_s
							puts "\n \n"
					if 		new_item_y_n.include? "y"
							puts "What is your new item? \n"
							new_item = gets.chomp.to_s
							puts "\n \n"
							puts "What is it's price? \n"
							new_price = gets.chomp.to_s
							puts "\n \n"
							item.add_item(menu, new_item, new_price)
							puts menu
							"\n \n" 
					else
							puts "Okay, I see I am not needed.... \n"
							x = false
					end
				end


	end


