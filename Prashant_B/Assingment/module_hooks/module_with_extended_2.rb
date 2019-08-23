module Person
    def name
        puts "my name is Prashant"
    end
end

class User
end

# user1=User.new
# user2=User.new
# user1.extend Person
# user1.name
# user2.name


#  Modifying Extened
module Person1
    def self.extended(base)
      puts "#{base} extended #{self}"
    end
  
    def name
      "My name is Prashant"
    end
  end
  
  class User1
    extend Person1
  end

 obj = User1.new
 obj.name