def get_ip_class
  puts "Please enter IP address"
  ip = gets
  first = ip.split(".")[0].to_i
  case first
  when 0..127
    puts "A"
  when 128..191
    puts "B"
  when 192..223
    puts "C"
  when 224..239
    puts "D"
  when 240..255
    puts "E"
  else
    puts "Please enter valid IP"
  end
end

get_ip_class
