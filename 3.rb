puts "Select option"
puts "1. Fahrenhit => Celcious"
puts "2. Celcious=> Fahrenhit"
op = gets.to_i

case op
when 1
	puts "Enter Fahrenhit : "
	f = gets.to_i
	c = (((f - 32) *5) / 9)
	puts "Celcious is : #{c}"
	exit
when 2
	puts "Enter Celcious : "
	c = gets.to_i
	f = (((c * 9) / 5) + 32)
	puts "Fahrenhit is : #{f}"
end