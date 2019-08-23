module Walkable
    def walk 
        "I'm Walking"
    end
end

module Swimmable
    def Swimmable
        "I'm Simming"
    end
end

class Animal
    include Walkable
    include Swimmable

    def speak
        "I'm an animal ,and I speak!"
    end
end
p Animal.ancestors