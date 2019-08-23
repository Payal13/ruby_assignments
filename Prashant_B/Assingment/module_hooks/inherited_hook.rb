class Person
    def name
       "My name is Prashant"
    end
  end
  
  class User < Person
  end
  
  puts User.new.name

# using self.inherited

puts "\nUsing self.inherited - >\n\n"

  class Person1
    def self.inherited(child_class)
      puts "#{child_class} inherits #{self}"
    end
  
    def name
      "My name is Prashant"
    end
  end
  
  class User1 < Person1
  end
  
  puts User1.new.name
  