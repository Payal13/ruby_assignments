class No
  attr_reader :No
  attr_reader :Not
  def initialize
    @@Not = 120
    @No = 10
  end
  
  def self.Not
    " This is not method #{:Not.object_id}"
  end

  def No
    print :No.object_id
    puts "\n This not variable "+ @@Not.to_s 
    print " It is from Symbol_Test "
    @No
  end
end


s = No.new
p No.Not
p s.No
p s.No
p s.No
p No.Not
p " Outside any Class #{:No.object_id}"



