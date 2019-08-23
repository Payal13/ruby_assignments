# class Vehicle
#     def no_of_wheels
#         puts "In Vehicle method wheels:4"
#     end
# end

# class Car < Vehicle
#     def no_of_wheels
#         super
#         puts "i am in car class"
#         puts "wheels:4"
#     end
# end

# Car.new.no_of_wheels


#################################################
# class Vehicle
#     attr_reader :number_of_wheels
#     def initialize(wheels)
#         @number_of_wheels=wheels
#     end
#     def print_fun
#         @number_of_wheels=10
#         puts number_of_wheels
#     end
#     def print_new
#         puts number_of_wheels
#     end
# end
# v=Vehicle.new
# v.print_fun
# v.print_new


# class Vehicle
#     attr_accessor :number_of_wheels
#     def initialize(wheels)
#         @number_of_wheels = wheels
#     end
#     def print_fun
#         puts number_of_wheels
#     end
#     def print_new
#         puts number_of_wheels
#     end
#     private
#     attr_accessor :number, :number2
# end
# obj=Vehicle.new(117)
# obj.number_of_wheels = 10
# obj.print_fun
# obj.number = 10


class Vehicle
    protected
    def print_fun
        puts "number_of_wheels"
    end

end

class Car < Vehicle
    def print_base
        print_fun
    end
end



class New < Car
    def print_new
        print_fun
    end
end

obj=New.new
# obj.print_base
obj.print_new