require 'digest'

module Encryption
    def encrypt(string)
        Digest::SHA@.hexdigest(string)
    end
end

class Person
    include Encryption
    
    