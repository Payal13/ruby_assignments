class Vehicle

  def initialize(wheels)
    puts 'i an in init'
    @wheels = wheels
  end

  def print_func
    puts "wheels: #{@wheels}"
    p @@klass_var
  end

  def init_instance_method
    @@klass_var = 'testvar'
    @type = 'test'
  end
end

t = Vehicle.new(4)
t.init_instance_method
t.print_func
