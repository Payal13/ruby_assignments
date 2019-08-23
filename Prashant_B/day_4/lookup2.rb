module Swimmable
   def print_me
    puts "hi .. Sw" 
   end
end
module Climbable
    def print_me
        puts "hi .. cl" 
       end
end

module Walkable
    def print_me
        puts "hi .. wl" 
       end
end
#walkable
class Animal
    include Walkable
    def print_me
        puts "hi .. ani" 
       end
end

class GoodDog < Animal
    include Climbable
    include Swimmable
end
 
puts GoodDog.new.print_me