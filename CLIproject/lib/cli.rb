class CLI 
  
  def begin 
      puts "Greetings!"
      API.fetch_characters
      self.list
  end  
  
  def list
      puts "I've complied a list of characters from Studio Ghibli films."
      puts "Would you like to see the list?"
      puts "Type 'yes' to continue or 'no' to leave."
    
      if user_responds = "yes" || user_responds == "y"
          puts "Okay! I'll show you the list!" 
        
          display_the_characters
          ask_user_to_choose_character
      end
    
  end
  
  def display_the_characters
    
    Character.all.each.with_index(1) do |character, index|
      puts "#{index}. #{character.name}"
    end
    
    def ask_user_to_choose_character
      puts "Enter the number of the character you'd like to read about."
      index = gets.strip.to_i - 1
    end
    
  end
  
end