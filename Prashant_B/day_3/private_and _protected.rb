# class Foo
 
#     def bar
#       method1
#     end
   
#     private
   
#     def method1
#       puts "Hi this is #{self.class}"
#     end
   
#   end
   
#   class Blah < Foo
   
#     def main_method
#       method1
#     end
   
#   end


# class Blah < Foo
   
#     def main_method
#       self.method1 # Wee are using explicity recevier
#     end
   
#   end
#   Foo.new.bar # Hi this is Foo
#   Blah.new.main_method # Hi this is Blah
  

  ####################################################################################
  class Foo
 
    def main_method
      method1
    end
   
    protected
   
    def method1
      puts "Hi this is #{self.class}"
    end
   
  end
   
  class Blah < Foo
   
    def main_method
      method1
    end
   
  end
   
  class NewFoo < Foo
   
    def main_method
      self.method1
    end
   
  end
   
  class NewBlah < Foo
  
    def main_method
      Blah.new.method1 #In this case Blah.new is same type of object self
    end
   
  end


#   class NewBlah
 
#     def main_method
#       Blah.new.method1 # In this case Blah.new is no longer the same type of object as self.
#     # and so trying to call a protected method with Blah.new as the receiver – fails.
#     end
   
#   end


  Foo.new.main_method # Hi this is Foo
  Blah.new.main_method # Hi this is Blah
  NewFoo.new.main_method # Hi this is NewFoo
  NewBlah.new.main_method  # this class is not inherit from foo
  