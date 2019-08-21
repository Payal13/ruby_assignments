def is_prime
	puts "Enter Number"
	number = gets.to_i
	for i in 2..number do
 		break if number % i == 0
	end

	if i == number
		puts "Prime Number"
	else
		puts "Not Prime Number"
	end
end

is_prime
