class Vehicle
  protected
  def test
    p " this is Vehicle"
  end
end

class Car < Vehicle
  def called
    test
  end
end

c = Car.new
c.called
