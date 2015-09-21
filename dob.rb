#module date_of_birth

#__OLIVER___PUTLAND

class DateOfBirth
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
				dob_range = dob[4] + dob[5] + dob[6] + dob[7]
				dob_range = dob_range.to_i
				dob_range = dob_range.between?(1900, 2020) 
				
			if dob_length == 8 && dob_test == true
				case dob_range
				when false
					return "Try again"
				else
					i = false
				end
				
			else
					return "Try again"

			end	

		end	
	return dob
end

end
customer = DateOfBirth.new


i = true
while i == true
	date = gets.to_s
		if customer.date_ok(date) == "Try again"
			if (customer.get_month(date) == "Try again") or  (customer.get_day(date) == "Try again") 
				puts "Try again"
			else 
				i = false
			end
		end
end




 