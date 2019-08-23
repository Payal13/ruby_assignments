module Cream
    FLAVOUR = 'Penaut Butter'
    def cream?
        true
    end
end

class Cookie
    include Cream
    def which_flavour?
        Cream::FLAVOUR
    end
    
end

cookie=Cookie.new
p cookie.cream?
puts cookie.which_flavour?