class CLI 
  
  def begin 
      puts "Greetings!"
      API.fetch_characters
      self.list
  end  
  
  def list
      puts "I've complied a list of characters from Studio Ghibli films."
      puts "Would you like to see the list?"
    
      if user_responds = "yes" || user_responds == "y"
          puts "Okay! I'll show you the list!" 
        
          display_the_characters
      end
    
  end
  
  def display_the_characters
    
    Character.all.each.do |character|
      puts character.name
    end
  end
  
end