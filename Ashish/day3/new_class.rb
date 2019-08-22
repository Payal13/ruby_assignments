class Test

    private
        def print_func
            puts "This is Private member"
        end
    
    public
    # class method ( Static methods in Java)
    def self.class_method
        puts " This is Class"
    end

    # instance method
    def print_fun
        puts " Hello Ruby.."
    end
end

t = Test.new
t.print_fun
Test.class_method
#t.print_func