
require 'objspace'

p ObjectSpace.memsize_of("a"*23)    #=> 23 
puts ObjectSpace.memsize_of("1")    #=> 24 
p ObjectSpace.memsize_of("a".*1000) #=> 1000


h = {"a"=>1, "b"=>2}
p ObjectSpace.memsize_of(h)         #=> 116