class A
  
  def print_func
    " This is A Class"
  end
end
class B < A

  def print_func
    " This is B Class"
  end
end
class C < A

end


c = C.new
p c.print_func