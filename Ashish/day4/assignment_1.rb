# module for checking conditions on countries
module CHECK
  def IMF_get_loan(name1)
    cnt = 0
    for i in Country.countries
      if i['Name'] == name1 && i['Country_State'] == 'Developing'
         return ' Can Access the IMF and World Bank Loan '
      elsif i['Name'] == name1 && i['Country_State'] == 'Developed'
        return ' Cannot Access the IMF and World Bank Loan '
      else
        cnt += 1
      end
    end
    if cnt == Country.countries.length
      return "Country Not found"
    end
  end

  def UN_security_seat?(name1)
    cnt = 0
    for i in Country.countries
      if i['Name'] == name1 && i['Country_State'] == 'Developing' && i['Population_GDP'].to_i < 10000
         return ' Cannot get UN Security Council Seat '
      elsif i['Name'] == name1 && i['Country_State'] == 'Developed' && i['Population_GDP'].to_i < 10000
        return ' Cannot get UN Security Council Seat'
      elsif i['Name'] == name1 && i['Country_State'] == 'Developing' && i['Population_GDP'].to_i > 10000
          return ' Can get UN Security Council Seat '
      elsif i['Name'] == name1 && i['Country_State'] == 'Developed' && i['Population_GDP'].to_i > 10000
         return ' Can get UN Security Council Seat '
      else
        cnt += 1
      end
    end
    if cnt == Country.countries.length
      return "Country Not found"
    end
  end

  def win_war(name1,name2)
    army1 = 0
    army2 = 0
    Country.countries.each do |i|
      if i['Name'] == name1
        army1 = i['Army_Strength'].to_i
      elsif i['Name'] == name2
        army2 = i['Army_Strength'].to_i
      end
    end
    if army1 != 0 && army2 != 0 
      if army1 > army2 
        return " #{name1} will Win the War"
      else
        return " #{name2} will Win the War"
      end
    else
      return " Country not found"
    end
  end
end

class Country

  extend CHECK

  
  @@hashes_countries = [{"Name"=>"India", "Population_GDP"=>"24334342", "Army_Strength"=>"2344334", "Country_State"=>"Developing"}]

  def initialize(namec,population_gdp,army_strength,country_state)
    @population_gdp = population_gdp
    @army_strength = army_strength
    @country_state = country_state
    @name = namec
    @@hashes_countries.push({'Name' => @name, 'Population_GDP' => @population_gdp , 'Army_Strength' => @army_strength , 'Country_State' => @country_state })
   
  end

  def self.countries
    @@hashes_countries
  end

  def self.print_func
    @@hashes_countries
  end

end

def add_country
  puts ' Enter the Country Details :: '
  puts ' Enter the Country Name : '
  name = gets.chomp
  puts 'Enter the Population GDP : '
  gdp = gets.chomp
  puts 'Enter the Army Strength : '
  strength = gets.chomp
  puts 'Enter the Country State ( Developed/Developing) : '
  state = gets.chomp
  Country.new(name,gdp,strength,state)
end

flag = 0
while flag == 0 
    puts "\n Welcome to CLI Application "
    puts " 1. Add Country \n" +
         " 2. Check Loan Status \n" +
         " 3. UN Security Council Seat \n"+
         " 4. Win War? \n" +
         " 5. Display Countries \n" +
         " 6. Exit \n" +
         ' Enter your choice ? '
    ch = gets.chomp.to_i

    case ch
    when 1 
      add_country
    when 2
      puts ' Enter the Country Name : '
      namec = gets.chomp
      puts Country.IMF_get_loan(namec)
    when 3
      puts ' Enter the Country Name : '
      namec = gets.chomp
      puts Country.UN_security_seat?(namec)
    when 4
      puts ' Enter the Country 1 name : '
      name1 = gets.chomp
      puts ' Enter the Country 2 name : '
      name2 = gets.chomp
      puts Country.win_war(name1,name2)
    when 5
      puts Country.print_func
    when 6
      flag = 1
    else
      puts 'Wrong Choice'
    end
  
end
