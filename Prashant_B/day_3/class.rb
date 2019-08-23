class Test
    def pls_print
        print_hello
    end
    protected 
    def grret
        puts " base"
    end
    private
    def print_hello
        puts "hello prashant"
    end
end

class Derived < Test
    def be_nice
        grret
    end
end

obj = Derived.new
obj.be_nice