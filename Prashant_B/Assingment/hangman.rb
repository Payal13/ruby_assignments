module HangmanWords
    WORDS=["reduce","reflect","region","relate","relationship","religious","remain",
        "remember","remove","report","represent","Republican","require","research",
        "resource","respond","response","responsibility","possible","power", "practice",
        "prepare","present","president","pressure","pretty","prevent","price","private",
        "probably","problem","process","produce","product","production","professional",
        "professor","measure","media","medical","meet","meeting","member",
        "memory","mention","message","method","middle","might"]

end

class Hangman
    include HangmanWords

    def initialize
    
        @lives=5
        @alpha=('a'..'z').to_a
        @guess=""
    end

    def show_char
        @alpha.each do |e|
    
            print " #{e}"
    
        end
        print "\n\n"
    end
    
    def get_word_to_guess
    
        HangmanWords::WORDS.shuffle!.sample
    
    end

    def check_char_in_word? word , char
        word.include?char
    
    end
    
    def delete_char(word,char)
       
        word.delete(char)  
    end

    def print_details
    
        puts "Lives Remaining: #{@lives}"
        show_char
    end

    def guess_letter
    
        print "Guess a letter: "
        @guess = gets.chomp.downcase.strip
        until check_char_in_word?(@alpha,@guess)
            puts "INVALID guess"
            puts "Please guess from the available letters"
            @guess = gets.chomp.downcase.strip
        end
    end

    def print_word word_array
        word_array.each do |x|
            if check_char_in_word?(@alpha,x.downcase)
              print "_ "
            else 
              print "#{x.upcase} "
            end
          end    
    end

    def start_game
        
        word=get_word_to_guess
        required_guess=word.length
        word_array = word.chars.to_a
        letters_remaining = word.chars.to_a
        #print word
        
        print "\n\nStart\n\n"
        
        guess_letter
        until @lives == 0 || letters_remaining == []
        
            if check_char_in_word?(word_array,@guess.downcase)
                
                delete_char(@alpha,@guess)  
                delete_char(letters_remaining, @guess.downcase)
                if letters_remaining == [] 
                    break
                end

                print_word (word_array)
                puts "\n\n"
                print_details
                guess_letter
            elsif @lives > 1
                     @lives-= 1

                    puts "WRONG!\n\n"
                    delete_char(@alpha,@guess)
                    print_word (word_array)
                    print_details
                    puts "\n\n"
                    guess_letter
            else
                @lives -= 1
                puts "YOU LOSE!\n"
                puts "The word was #{word_array.to_s.upcase}"
                
            end
        end
        if letters_remaining == []
            puts "CONGRATULATIONS! You got the word #{word_array.to_s.upcase}" 
          end   
    end
end

obj = Hangman.new
obj.start_game
