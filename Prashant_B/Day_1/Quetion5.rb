ip_address=gets.chomp.to_s
class_A=["1.0.0.1","126.255.255.254"]
class_B=["128.1.0.1","191.255.255.254"]
class_C=["192.0.1.1","223.255.254.254"]
class_D=["224.0.0.0","239.255.255.255"]
class_E=["240.0.0.0","254.255.255.254"]
if ip_address>=class_A[0] && ip_address<=class_A[1]
    puts "Class A"
elsif ip_address>=class_B[0] && ip_address<=class_B[1]
    puts "Class B"
elsif ip_address>=class_C[0] && ip_address<=class_C[1]
    puts "Class C"
elsif ip_address>=class_D[0] && ip_address<=class_D[1]
    puts "class D"
elsif ip_address>=class_E[0] && ip_address<=class_E[1]
    puts "Class E"
else
    puts "Enter valid ip"
end