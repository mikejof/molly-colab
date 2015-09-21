year = "1515cc"

year = year[4] + year[5]
		year = year.to_i
		is_true = true
		while is_true == true
		if year =~ /[A-Za-z]/
						puts "try again"
						is_true = true
		
		else 
			is_true = false
		end
	end

		is_true = true
			while is_true == true
					if year.between?(0, 99)
						is_true = false
						
					else 
						is_true = true
						puts "try again"
						
					end
			end
	
	puts year