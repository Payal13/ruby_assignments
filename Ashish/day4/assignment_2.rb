def method_find_char( word, chr,new_str)
  index = []
  arr_word = word.split("")
  for i in (0...arr_word.length)
    if arr_word[i] == chr
      index.push(i)
    end
  end
  str = new_str
  for j in index
    str[j] = chr
  end
  str
end

puts ' Play The Hangman Game '
puts ' Player 1 '
puts ' Enter the word :: ' 
word = gets.chomp

flag = 0 
new_str = "-"* word.length
while flag == 0
  puts ' Player 2 Guess the Word '
  puts "\n 1. Enter the word "+
       "\n 2. Enter the Character "+
       "\n 3. Leave "+
       "\n 4. Display your guess word "+
       "\n 5. Exit "
  puts ' Choose the option :: '
  ch = gets.chomp.to_i

  case ch
  when 1
    puts ' Enter the Word '
    guess_word = gets.chomp
    if word == guess_word
      puts ' You Win '
      break
    else
      puts ' You Lose '
      break
    end
  when 2
    puts ' Enter any character :: '
    chr = gets.chomp
    new_str = method_find_char( word, chr,new_str)
    puts new_str
    if new_str.count('-') == 0
      puts " You Won "
      break
    end
  when 3
    puts " You Lose ..  the word is #{word}"
    break
  when 4
    if new_str.empty?
      puts ' You have not guess any character '
    else
      puts ' Your word up till now is :: '
      puts new_str
    end
  when 5
    break
  else
    puts ' Wrong choice '
  end
end