print "Enter height : "
h = gets.to_i

print "Enter width : "
w = gets.to_i

blocks = h*w

required_blocs = blocks / 144

cost = (required_blocs*30) + (required_blocs*2)

puts "Required blocs are #{required_blocs}"

puts "Cost is #{cost}"