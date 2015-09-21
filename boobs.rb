#module date_of_birth

#__OLIVER___PUTLAND

class DateOfBirth
@year 
@month
@day
	def get_year(year)
		@year = year
		year = year[4] + year[5] + year[6] + year[7]
		year_integer = year.to_i	
					if /[^0-9]/.match(year)
						return "try again"
					elsif year_integer.between?(1900,2020)
						return year_integer
					else
						return "try again"
					end
	end

def get_month(month)
	@month = month
	month_integer = month[2] + month[3]
	month_integer = month_integer.to_i
		if /[^0-9]/.match(month)
			return "try again"
		end
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
				return "try again"
			end
	end

def get_day(day)
	@day = day
	day_check = day
	daym = day
	days = day
	day = day[0] + day [1]
	day_integer = day.to_i
	month = daym[2] + daym[3]
	month = month.to_i
	year = days[6] + days[7]
	year = year.to_i
	is_leapyear = year % 4
	puts month
	is_true = day_integer.between?(1, 28) 
	puts is_true
	is_truetn = day_integer.between?(1,29) 
	puts is_truetn
	is_truet = day_integer.between?(1,30)
	puts is_truet
	is_true_to = day_integer.between?(1, 31) 
	puts day_integer

		if  /[^0-9]/.match(day_check)
			return "try again"
		end
		if month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month ==12
			case is_true_to
			when true
				return day_integer
			when false
				return "try again"
			end

		elsif month == 2 
				if is_leapyear == 0
					if is_truetn == true
						return day_integer
					else "try again"
					end
				elsif is_leapyear >= 1
					if is_true == true
						return day_integer
					else "try again"
					end
				end
			
		elsif month == 2 && is_true == true
				return day_test
		elsif month == 2 && is_true == false
				return "try again"
				
		else 
			case is_truet
			when true
				return day_test
			else
				return "try again"
			end
		end
	end
end

