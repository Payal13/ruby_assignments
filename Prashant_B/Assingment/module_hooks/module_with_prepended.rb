module Person
    def name
      "My name belongs to Person"
    end
  end
  
  class User
    def name
      "My name belongs to User"
    end
  end

puts User.new.name

# Now let's see prepend in action

puts "\n\nbelow ans using prepend\n\n"
module Person1
    def name
       super
      "My name belongs to Person1"
    end
  end
  
  class User1
    prepend Person1
    def name
      "My name belongs to User1"
    end
  end
  
  puts User1.new.name 