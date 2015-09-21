#ITEMS BOUGHT - KEEP ON FILE

#___OLIVER___PUTLAND____
class ItemList
menu = {"Television" => 1200,
		"Laptop" => 1500,
		"GPS Watch" => 200,
		"Keyboard" => 50,
		"A Life" => "You shall never have one...."}

def add_item(menu)
	@menu = menu	
	itemname = menu
	puts "What is the price? "
		itemprice =gets.to_i
	new_item = {itemname => itemprice} 
	menu = menu.merge(new_item)
	return menu
end

def price(menu)
	@menu = menu
	puts "What item did they buy? "
	x = gets.to_s
	puts menu[x]
	return menu[x]
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
menu = {"Television" => 1200,
		"Laptop" => 1500,
		"GPS Watch" => 200,
		"Keyboard" => 50,
		"A Life" => "You shall never have one...."}
w = ItemList.new
p menu
w.add_item(gets.to_s)