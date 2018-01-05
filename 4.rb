puts "Enter total numbers"
no = gets.to_i

i=0
odd = 0
even = 0

arr = Array.new(no)

while i<no
	i += 1
	puts "Enter no. #{i}"
	arr.insert(gets.to_i)
end

for number in arr
	if((number.to_i)%2==0)
		even += 1
	else
		odd += 1
	end
end

puts "Size : #{arr.size()} "
puts "Odd numbers #{odd}"
puts "Even numbers #{even}"