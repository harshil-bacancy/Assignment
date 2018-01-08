class Product
	def initialize(pro_no, pro_name, pro_price, pro_gst)
		@pro_no = pro_no
		@pro_name = pro_name
		@pro_price = pro_price
		@pro_gst = pro_gst
	end

	def get_product
		[@pro_no, @pro_name, @pro_price, @pro_gst]
	end
end

arr = [Product.new(1,"AC", 25000, 18),
	   Product.new(2,"Computer", 20000, 20),
	   Product.new(3,"Keyboard", 800, 12),
	   Product.new(4,"Mouse", 300, 15),
	   Product.new(5,"Pr", 4200, 18),
	   Product.new(6,"Scanner", 7500, 20),
	   Product.new(7,"Refrigerator", 13500, 10)]

puts "Enter you name : "
name = gets.to_s

buy_id = []
buy_qty = []
for i in 0..99

	puts %x{clear}

	puts "No. \t Name \t Price(Rs.) \t GST(%)"
	for i in 0..6
		a = arr[i].get_product
		puts "#{a[0]} \t #{a[1]} \t #{a[2]} \t #{a[3]}"
	end

	puts "Enter product ID \nEnter 0 to generate bill"
	id = gets.to_i
	if id == 0
		break
	end
	puts "Enter product quantity"
	qty = gets.to_i
	buy_id << id
	buy_qty << qty
end

total_price = 0
total_gst = 0

puts %x{clear}
puts "Customer Name: #{name}"
puts "No. \t Name \t Price \t Qty.\t Amount \t GST(%) \t Net Amount"
for i in 0..buy_qty.length-1
	buy = arr[buy_id[i]-1].get_product
	price = buy[2] * buy_qty[i]
	total_price += price
	gst = price * buy[3] / 100
	total_gst += gst
	puts "#{buy[0]} \t #{buy[1]} \t #{buy[2]} \t #{buy_qty[i]} \t #{price} \t #{gst} \t #{price + gst}"
end
puts "Total amount : #{total_price}"
puts "Total GST : #{total_gst}"
puts "Net Amount : #{total_price + total_gst}"