#Baratas Supermarket (Snacks)
def customer_id
	puts "Welcome to Baratas Supermarket"
	puts "Please enter your name"
	customer_name = gets.chomp
	puts "Happy shopping, #{customer_name}"
end


def setting_items
	cart = []
end

def item_list
	@price_list = {
		"bun" => 2,
		"candy" => 1,
		"jelly" => 1.50,
		"juice" => 3
	}

	#Enter items
def enter_items
	puts "Please enter your item:"
	@item_name = gets.chomp.downcase
end


	#Adding quantity
def item_quantity(product, quantity = 1)
	@item_name[product = quantity]
	puts "Enter quantity:"
	item_quantity = gets.chomp.to_i 
	cart << { name: @item_name, quantity: item_quantity}
	puts "#{item_quantity} #{@item_name} has been added"
end


	#Adding voucher
def discount_voucher(discount)
	puts "Enter total price:" 
	total = gets.chomp.to_i
	puts "Enter discount off:"
	discount = gets.chomp.to_i
	after_discount = total - (total * discount / 100)
	puts "Your final price is: #{afterDiscount}"
end


	#Total price
def total(product)
	@item_name.each do |product, quantity|
	 total += @price_list * item_quantity 
end


	#Shopping cart
def cart_display(cart)
	puts "Your items:"
	cart.each do |product| 
		puts "#{@item_name} - RM#{@price_list} (Quantity: #{item_quantity}) "
	end
end

	#continue shopping
def continue
	puts "Do you want to add more? (yes/no)"
	to_continue = gets.chomp.downcase
end

	#Total price calc
def total_calc (product)
	calc = @item_name.reduce(0) { |sum, product| sum + @price_list * item_quantity }		#calc add at the end
end


	#payment
def transaction (paid, total_payment)
	if paid >= total_payment
		puts "Thanks!" 
	else
		puts "Your payment is insufficient."
	end
end


customer_id
setting_items
loop do 
	item_list
	enter_items
	item_quantity
	if @item_name == "done"
		break
	end

	discount_voucher
	total(item_name)
	cart_display
	continue
	if to_continue == "no"
		break
	end

	total_calc
	transaction
	end
end






end

# Leave this here.
#run


				# iterate the hash, 
				# get the key, 
				# then check the list of items,
				# take the price, and multiply quantity.
				# Only interger and float
				# setting # first must define the settings.
				#run program
#	puts customer_info
#	puts @items_price
#	print "Enter an item to verify price: "
#	item = gets.chomp
#	puts "This #{item}'s cost: #{@items_price[item]}"

		#Item price (not sure)
#def items_price
#		puts "Enter price:" 
#		input = gets.chomp

#			begin
#				price = Float(input)
#				if price >= 0
#					return price 
#				else
#					puts "Price is invalid. Please enter correctly."
#				end
#			rescue ArgumentError
#				puts "Invalid. Please enter correctly."
#			end
#end
