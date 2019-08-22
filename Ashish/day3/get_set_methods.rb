class Vehicle
  attr_reader :number_of_wheels
  attr_writer :number_of_wheels
  # attr_accessor :number_of_wheels, :type
  def initialize(wheels)
    @number_of_wheels = wheels
    @type = 'car'
  end

  def print_func
    puts number_of_wheels
  end
end

v = Vehicle.new(2)
v.print_func
v.number_of_wheels = 10
v.print_func
v.number_of_wheels 
