def is_valid_mobile_number
  puts "Enter Mobile Number"
  mobileNumber = gets.chomp
  is_valid = /\A\d{10}\z/.match?(mobileNumber)
  puts "Valid"  if is_valid
  puts "Invalid"  unless is_valid
end

def is_valid_gender
  puts "Enter Gender"
  gender = gets.chomp
  is_valid = /M|F/i.match?(gender)
  puts "Valid"  if is_valid
  puts "Invalid"  unless is_valid
end

def is_valid_amount
  puts "Enter Amount"
  amount = gets.chomp
  is_valid = /\A\d+(.)\d{0,2}\z/.match?(amount)
  puts "Valid"  if is_valid
  puts "Invalid"  unless is_valid
end

def is_valid_name
  puts "Enter Name"
  name = gets.chomp
  is_valid = /\[a-zA-Z]/.match?(name)
  puts "Valid"  if is_valid
  puts "Invalid"  unless is_valid
end

is_valid_mobile_number
is_valid_gender
is_valid_amount
is_valid_name
