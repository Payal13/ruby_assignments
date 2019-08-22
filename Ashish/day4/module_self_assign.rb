module A

  def self.staticA
    " This is a Static method in Module A"
  end

  def simpleA
    " This is Simple A method in Module A"
  end
end

module B
  def self.staticB
    " This is a Static method in Module B"
  end

  def simpleB
    " This is Simple B method in module B"
  end
end
class AB
  include A

end
class BD < AB
  extend B

end

a = AB.new
b = BD.new

p A.staticA
p a.simpleA
p B.staticB
p BD.simpleB
p A.staticA
p b.simpleA