FLAVOUR = 'Peanut Butter'
module Cream
 
  def cream?
    true
  end
end
  class Cookie
    extend Cream

    def which_flavour?
      # access constants
      FLAVOUR
    end
  end

  cookie = Cookie.new
  p Cookie.cream?
  p cookie.which_flavour?

