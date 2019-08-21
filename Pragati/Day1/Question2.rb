def get_grade
	grade = get_input
	case grade
	when 1..5
		puts "Elementary"
	when 6..8
		puts "Middle school"
	when 9..12
		puts "High school"
	else
		puts "College"
	end
end

def get_input
  puts 'enter the grade number'
  gets.to_i
end

get_grade
