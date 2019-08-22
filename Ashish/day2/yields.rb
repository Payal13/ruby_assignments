def print_no(no,&abc)
	num = [1,2,3,4]
	abc.call(no)
end

print_no(1)  do |i|
	puts i
end


