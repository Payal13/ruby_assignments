puts " Enter the Details "
puts " Mobile Number :: "
no = gets.chomp

if no.match(/^\d{10}$/)
	puts " Mobile no is correct "
else
	puts " Mobile No is wrong "
end

puts " Email id :: "
email = gets.chomp

if email.match(/^\w*@[a-zA-Z]*.[a-zA-Z]{2,3}$/)
	puts " Email is valid "
else
	puts " Email is not valid "
end


puts " Gender :: "
gender = gets.chomp

if gender.match(/^[mfMF]$/)
        puts " Gender is valid "
else
        puts " Gender is not valid "
end

puts " Amount :: "
amt = gets.chomp

if amt.match(/^\d*.\d*$/)
        puts " Amount is valid "
else
        puts " Amount is not valid "
end
