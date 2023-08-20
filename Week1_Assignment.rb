#Baratas Supermarket (Snacks)
def customer_id
	puts "Welcome to Baratas Supermarket"
	puts "Please enter your name"
	customer_name = gets.chomp
	puts "Happy shopping, #{customer_name}"
end


def setting_items
	@cart = []
end

def item_list
	@price_list = {
		"bun" => 2,
		"candy" => 1,
		"jelly" => 1.50,
		"juice" => 3
	}
end

def voucher_list
	@voucher = {
		"FIFTEENOFF" => 0.15,
		"TWENTYOFF" => 0.2,
		"THIRTYOFF" => 0.3
	}
end

	#Enter items
def enter_items
	puts "Please enter your item:"
	@item_name = gets.chomp.downcase
end


	#Adding quantity
def item_quantity(item_list)
	puts "Enter quantity:"
	quantity = gets.chomp.to_i 
	@cart << { name: @item_name, amount: quantity}
	puts "#{quantity} #{@item_name} has been added"
end


	#Adding voucher
def discount_voucher
	loop do 
		puts "Please key in your voucher code or type 'none' to skip:"
		@vou_code = gets.chomp.upcase
		@valid_vou = 0
		break if @vou_code == "none"
		if @voucher.has_key?(: "#{@vou_code}") 
				@valid_vou = @voucher[:"#{@vou_code}"]
				puts "#{@valid_vou*100}% off have been entered"
				return @valid_vou
		else
				puts "Invalid code"
		end
	end
end

def continue
	puts "Do you want to add more? (yes/no)"
	to_continue = gets.chomp.downcase
end



def calc_price_off(price, vou_code)
	discount = @voucher[vou_code]
	off_price = @price_list * (1 - discount)
	return off_price
end
end

	#Shopping cart
def cart_display(cart)
	puts "Your items:"
	cart.each do |product| 
		puts "#{@item_name} - RM#{@price_list} (quantity: #{quantity}) "
	end
end


	#Total price calc
def total_calc (product)
	calc = @item_name.reduce(0) { |sum, product| sum + @price_list * quantity }		
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
	voucher_list
	enter_items
	item_quantity(item_list)
	if @item_name == "done"
		break
	end
	discount_voucher
	total(@item_name)
	cart_display
	continue
	if to_continue == "no"
		break
	end

	total_calc
	transaction
end



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
