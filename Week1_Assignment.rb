
#Baratas Supermarket (Snacks)
def customer_id
	puts "Welcome to Baratas Supermarket"
	puts "Please enter your name"
	customer_name = gets.chomp
	puts "Happy shopping, #{customer_name}"
end

customer_id

class ShoppingList
	def setting_items
		@items = {}
		list = []
	end

	#Adding items
	def adding_items(product, quantity=1)
		@items[product] = quantity
	end

	#Items price
	def items_price
		loop do 
			puts "Enter price:" 
			input = gets.chomp

			begin
				price = Float(input)
				if price >= 0
					return price 
				else
					puts "Price is invalid. Please enter correctly."
				end
			rescue ArgumentError
				puts "Invalid. Please enter correctly."
			end
		end
	end

	bill = items_price
	puts "Your cost: RM#{bill}"
	end
end

	#Total price
	def total(product)
		@items.each do |product, quantity|
		 total += @items * quantity
	end


	#Adding voucher
	def discount_voucher(discount)
		puts "Enter total price:" 
		total = Integer(gets.chomp)
		puts "Enter discount off:"
		discount = Integer(gets.chomp)
		afterDiscount = total - (total * discount / 100)
		puts "Your final price is: #{afterDiscount}"
	end

	total 
	end
	
loop do 
	puts "Please enter your item:"
	@items = gets.chomp.downcase
	if @items == down
	break
	end
end



#	puts "Enter amount"
#	quantity = gets.chomp.to_i
#	adding_items(item, quantity)

#	puts @items

	# sum(@items.values)
	# discount_item
#end

# Leave this here.
#run

# Product (name, price)
#@items_price = {'Note Book' => '3', 
#	'Ruler' => '1' ,
#	'Eraser' => '3', 
#	'Marker' => '3' }

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
	