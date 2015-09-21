=begin  THIS HOLDS A CHECK FOR RANDOM NUMBER GENERATION
id = Random.new
	#x =	id.rand(10000..99999)

		x = id.rand(10000..10001)
		z = id.rand(10000..10001)
		puts x
		while z == x
			puts "Already exists, retrying."
			z =	id.rand(10000..10001)
			puts z
		end

boobs = gets.to_s
boobs2 = "hello"
		counter = false
		while counter == false
			if (boobs.count("0-9") > 0) == true
			puts "My spidey senses detect a number, try again "
				boobs = gets.to_s
			else
				puts gets.to_s + "doodle"
				counter = true
			end

		end
		=end

		boobs ="121291"
		boobs[1].to_s + boobs[2] 