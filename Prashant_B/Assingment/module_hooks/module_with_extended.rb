module Person
    def name
      "My name is Prashant"
    end
  end

  class User
    extend Person
  end

  puts User.name    