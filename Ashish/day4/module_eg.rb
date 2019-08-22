module Swimmable
  def print_func
    "This is Swimmable"
  end
end
module Walkable
  def print_func
    "This is Walkable"
  end
end
module Climbable
  def print_func
    "This is Climbable"
  end
end

class Animal
  include Walkable
end

class GoodDog < Animal
  include Climbable
  include Swimmable
end

puts GoodDog.new.print_func