
class Vehicle
    def initialize(wheel)
        @wheel=wheel
    end
    def print_wheels
        puts "#{@wheel}"
    end
end

obj = Vehicle.new(4)
obj.print_wheels

# for class veriable use @@ and method use self.method_name