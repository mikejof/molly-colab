menu = {:Television => 1200,
		:Laptop => 1500,
		:GPS_Watch => 200,
		:Keyboard => 50,
		:A_Life => "You shall never have one...."}


puts "What is the name of the item you want to remove? "
		itemname = gets.chomp.to_s
		menu.delete(itemname)
		p menu
