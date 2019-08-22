class Person
  protected
  def greet
        puts "Hey, wassup!"
    end

    public
    def speak
        puts "Hey, Tj!"
    end
end

class Me < Person
    def be_nice
        greet
    end
end

tj = Me.new
tj.be_nice  