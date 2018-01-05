ha = {
	"Ahmedabad" => "",
	"Surat" => "",
	"Rajkot" => "",
	"Baroda" => "",
	"Gandhinagar" => ""
}

for i in 0..4
	print "Enter temprature for #{ha.keys[i]}"
	temp = gets.to_s.chomp

	if temp.include?("c") || temp.include?("C")
		temp = (((temp.to_i * 9) / 5) + 32).to_s + "F"
	end

	ha["#{ha.keys[i]}"] = temp
end

def shorting(ha)
	
	len = ha.length
	
	keys = ha.keys
	values = ha.values

	for i in (0..len-1)
		for j in (0..len-i-1)
			if j == len-1
				break
			end
			if values[j].to_i < values[j+1].to_i
				tempk = keys[j]
				tempv = values[j]

				keys[j] = keys[j+1]
				values[j] = values[j+1]

				keys[j+1] = tempk
				values[j+1] = tempv
			end
		end
	end

	h = Hash.new
	for i in 0..keys.size-1
		h[keys[i]] = values[i]
	end
	p h
end

shorting(ha)