module Person
    def self.included base
        puts "#{base} included #{self} "
    end
    def name
      puts "My name is Prashant"
    end
  end

  class User
    include Person
  end

  obj=User.new
obj.name