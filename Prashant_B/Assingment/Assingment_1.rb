module CountriesData
    DATA={
        :Aus:{
            "population": "120",
            "GD": "4",
            "Army_Strength": "250000",
            "States": "20",
            "state_of_country": "Devoloped",
            "vote_for_un": "10"
        },
        :Ind:{
            "population": "230",
            "GD": "8",
            "Army_Strength": "25000000",
            "States": "36",
            "state_of_country": "devloping",
            "vote_for_un": "15"
        },
        :Eng:{
            "population": "200",
            "GD": "9",
            "Army_Strength": "1500000",
            "States": "30",
            "state_of_country": "devloped",
            "vote_for_un": "20"
        },
        :Japan:{
            "population": "150",
            "GD": "8",
            "Army_Strength": "12000",
            "States": "20",
            "state_of_country": "devloped",
            "vote_for_un": "12"
        }
    }

    def country_will_get_loan?(country_name)
        DATA.each do |key ,value|
            if key.include? country_name
                print value
            end
    end
end

end

class Application
    include CountriesData
    def initialize name
        @country_name = name 
    
    end
    
    def will_get_loan
        print CountriesData::DATA[:@country_name]
        # print CountriesData::country_will_get_loan?(@country_name)
    end

end

Obj = Application.new("Japan")
Obj.will_get_loan
Obj.country_will_get_loan?("japan")