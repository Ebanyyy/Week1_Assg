@items = {
	"bun" => 2.50,
	"candy" => 1,		
	"jelly" => 1.50,
	"juice" => 3
}

@vouchers = {
	"FIVE" => 0.5,
	"TWENTY" => 0.2,
	"FIFTEEN" => 0.15
}

@cart = {}
@total_cart = 0

def customer_name
	puts "Please enter your name:"
	gets.chomp
end

def enter_item
	puts "Please enter your item:"
	gets.chomp
end

def enter_quantity
	puts "Quantity:"
	gets.chomp.to_i
end

def check_price(product)
	if @items.has_key?(product)
		@items[product]
	end
end

def calc_total(price, quantity)
	price * quantity
end

def to_continue
	puts "Do you want to add more? Type 'n' to checkout."
	gets.chomp
end 

def payment(discount_amount)
	puts "Your bill is: #{@total_cart}"

	new_amount = @total_cart * discount_amount

	puts "Bill after discount: #{new_amount}"

	puts "Enter cash amount:"
	amount = gets.chomp.to_i
	balance = amount - new_amount

	puts "Your balance is: #{balance}"
end

def enter_voucher_and_get_discount
	puts "Please enter your voucher"
	voucher = gets.chomp

	if @vouchers.has_key?(voucher)
		discount = @vouchers[voucher]
	end
end

customer_name
loop do
	item = enter_item
	puts "You selected: #{item}"
	
	price = check_price(item)
	puts "#{item} price is: #{price}"

	quantity = enter_quantity
	puts "You selected: #{quantity} for #{item}"

	@total_cart += calc_total(price, quantity)
	puts "Total: #{@total_cart}"	
 	
	reply = to_continue

	break if reply == 'n'

	# @cart[item] = quantity
	# puts "Cart: #{@cart}"
end

discount_amount = enter_voucher_and_get_discount

puts "discount: #{discount_amount}"

payment(discount_amount)

