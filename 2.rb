print "Enter height : "
h = gets.to_f

print "Enter width : "
w = gets.to_f

blocks = h*w

required_blocs = (blocks / 144).to_f

cost = (required_blocs*30) + (required_blocs*2)

puts "Required blocs are #{required_blocs}"

puts "Cost is #{cost}"