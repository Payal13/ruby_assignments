puts "Enter the mobile number"
mobile_number=gets.chomp.to_s
puts "Enter the Name"
name=gets.chomp.to_s
puts "Enter the Email_id"
email_id=gets.chomp.to_s
puts "Enter the gender [M or F]"
gender=gets.chomp.to_s
puts "Enter the amount"
amount=gets.chomp.to_s
Email_Return_value=email_id.downcase.match(/[a-z0-9\+\-_\.]+@[a-z\d\-.]+\.[a-z]+/i)
Gender_Return_value=gender.match(/(M|F)/)
Name_Return_value=name.downcase.match(/[\sa-zA-Z]+/)
mobile_number_Return_value=mobile_number.match(/^[1-9]{1}[0-9]{9}$/)
amount_Return=amount.match(/^[0-9]\d{0,9}$/)
if !Email_Return_value
    puts "Please enter valid email address"
elsif !Gender_Return_value
    puts "Please Enter Gender [M or F]"
elsif !Name_Return_value
    puts "Enter the Correct Name"
elsif !mobile_number_Return_value
    puts "Enter Correct mobile number"
elsif !amount_Return
    puts "enter valid amount"
else
    puts "EveryThing is ok"
end
