class CLI 
  
  def start
      puts "I've compiled a list of characters from Studio Ghibli films."
      puts "Would you like to see the list?"
      puts "Type 'y' to continue or 'n' to leave."
      
      user_input = gets.strip.downcase
      if user_input == "y"
          puts "Okay! I'll show you the list!"
          sleep(1)
          "\n"
          puts "Fetching..."
          sleep(4)
          
      display_characters
      ask_user_choice
      
      else
         puts "ByeBye! See you later!"
         puts "\n"
      end
    end
  
  def display_characters
    
    CHARACTER.all.each.with_index(1) do |character, index|
      puts "#{index}.#{character.name}"
    end
  end
    
    def ask_user_choice
      puts "Enter the number of the character you'd like to read about."
      index = gets.strip.to_i-1
      
      until index.between?(0, CHARACTER.all.length-1)
        puts "Oops! I don't understand. Please enter a valid number."
        index = gets.strip.to_i-1
      end
      
      character_instance = CHARACTER.all[index]
      
      display_character_traits(character_instance)
    end
    
    def display_character_traits(character)
        sleep(2)
        puts "\n"
        puts "Name"+character.name
        puts "Gender"+character.gender
        puts "Age"+character.age
        puts "Films"+character.films
    end
    
    def list
      puts "Would you like to look again?"
      puts "Type 'y' to continue or 'n' to leave."
      
      user_input = gets.strip.downcase
    
      if user_input == "y"
          puts "Okay! I'll show you the list!"
          display_characters
          ask_user_choice
      else
         puts "ByeBye! See you later!"
         puts "\n"
      end
    end
        
end
