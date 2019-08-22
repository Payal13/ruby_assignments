new_proc = Proc.new{ |name| puts "Hello Josh "+name}

new_proc.call(" Josh")


def test_func(p)
	puts "before proc"
	p.call("Ashish")
	puts "after proc"
end

test_func new_proc
