
abc = ->(*i) do  puts 'Hello'+ i[0]
puts i
end

def no_yield(abc)
	
	puts 'Before block'
	yield if block_given?
	abc.call('Ashish','Abhijit')
	puts 'After Block'
end

no_yield abc


