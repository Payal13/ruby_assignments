class Symbol_Test

  
  

  def initialize(no)
    @no = no
  end

  def no
    print :no.object_id
    print " It is from Symbol_Test "
    @no
  end

  def no
    print " It is from Symbol_Test Another method "
    @no
  end
end

class Again
  attr_reader :no
  
  def initialize(no)
    @no = no
  end

  def no
    print :no.object_id
    print " #{:no.class}" 
    print " It is from Again " 
    @no
  end
end

s = Symbol_Test.new(10000)
p s.no
p s.no

a = Again.new(111)
p a.no
p a.no

p s.no
p s.no

p " Outside any Class #{:no.object_id}"
p "#{:no.empty?}" 


