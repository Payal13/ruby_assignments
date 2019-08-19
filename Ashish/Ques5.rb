puts " Enter the IP Address : "
ip = gets.chomp.to_i

case ip
when 0..126
	puts " Class A"
when 128..191
	puts " Class B"
when 192..223
	puts " Class C"
when 224..240
	puts " Class D"
when 241..255
	puts " Class E"
when 127
	puts " Localhost"
else
	puts " Invalid Ip Address "
end
