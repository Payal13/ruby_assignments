module CountriesData
    DATA=[[ "India","8","20","230","30000","36","devloped"],
        ["Aus","7","10","200","12000","20","devloping"],
        ["Bhutan", "6","15","130","2000","25","devloped"],
        ["Eng","5","20","150","12000","22","devloping"]]
    ARRAY_OF_HASHESH=[]
    def create_hash
        DATA.each { |record| ARRAY_OF_HASHESH << {"name" => record[0],"GDP" => record[1],"vote_got_un" => record[2],"population" => record[3],"army_strength" => record[4], "states" => record[5] , "state" => record[6]}  }
    end
    def country_will_get_loan(country_name)
        ARRAY_OF_HASHESH.each do |i|
            if i["name"] == country_name
            if i["GDP"] >6.to_s && i["state"] == "devloped"
                puts "#{country_name} will get loan"
            else
                puts "#{country_name} will not get loan"

            end
        end
        
    end 
end
    def get_Army_Strength(name)
        ARRAY_OF_HASHESH.each do |i|
        if i["name"] == name
           return i["army_strength"]
        end
        end
    end
end


class Application
    include CountriesData
    def initialize name
        @country_name = name 
    
    end
    def print_hash
        print CountriesData::ARRAY_OF_HASHESH
    end
    def country_can_have_seat_in_un(name)
        CountriesData::ARRAY_OF_HASHESH.each do |countries|
            if  countries["name"] == name
            if countries["vote_got_un"]> 10.to_s
                puts "#{name } have seat in un"
            else
                puts "#{name} have not seat in un"
            end
            end
        end
    end
    def can_win_war(name)
        win=[]
        looses=[]
       army_strength1=get_Army_Strength name
       CountriesData::ARRAY_OF_HASHESH.each do |countries|
        if countries["name"]!=name
        if army_strength1< get_Army_Strength(countries["name"])
            looses << countries["name"]
        else
            win << countries["name"]
            
        end
        end
    end
    puts "#{name} can win war against #{win}"
    puts "#{name} can losse war against #{looses}"
    end

end

Obj = Application.new("India")
Obj.create_hash
# Obj.print_hash
Obj.country_will_get_loan("India")
Obj.country_can_have_seat_in_un("Aus")
Obj.can_win_war("Aus")