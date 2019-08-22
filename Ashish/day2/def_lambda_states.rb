def states
	query = { "India" => [ 'Maharashtra','M','N'],
		"Europe" => [ 'a','e']} 
-> (country) do
		puts query[country]
	end
end

states.call('India')
