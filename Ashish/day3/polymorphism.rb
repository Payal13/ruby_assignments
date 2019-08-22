class Vehicle
  def no_of_wheels
    p 'This is the Vehicle Method'
  end
end

class Car < Vehicle

  def no_of_wheels
    super
    puts "This is the Car Class"
  end
end

Car.new.no_of_wheels
Vehicle.new.no_of_wheels