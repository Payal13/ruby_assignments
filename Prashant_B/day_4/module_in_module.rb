module Cream
    FLAVOUR = 'Penaut Butter'
    def cream?
        true
    end
end

module CreamNew
    include Cream
    FLAVOUR = 'Penaut'
    def cream?
        false
    end
end


class Cookie
    include CreamNew
    def which_flavour?
        Cream::FLAVOUR
        CreamNew::FLAVOUR
    end
    
end

cookie=Cookie.new
p cookie.cream?
puts cookie.which_flavour?