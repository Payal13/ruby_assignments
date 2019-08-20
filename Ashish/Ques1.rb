
puts " Enter a Number : "
no = gets.chomp.to_i
flag =0
i=2
while i<no/2

	if no%i == 0
		flag = 1
		break
	
	end
	i+=1
end

if flag == 0
	puts " #{no} is a Prime Number "
else
	puts " #{no} is not a Prime Number"
end
