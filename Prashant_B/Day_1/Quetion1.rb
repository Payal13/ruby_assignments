number=gets.chomp.to_i
flag=0
for i in (2..number/2)
    if number%i==0
        flag=1
    end
end
if flag!=1
    puts "#{number} is Prime"
else
    puts "#{number} is not Prime"
end