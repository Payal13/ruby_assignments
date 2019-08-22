def my_each(nos,&abc)
	for i in nos
	abc.call(i)
	end
end

my_each([1,2,3,4,5]) do |i|
	puts i
end
