class CLI
  
  def start
    puts "\n"
    puts "Welcome!"
    puts "\n"
    API.fetch_characters
    self.list
  end
  
  def list
    # give user option to see list of Cover Girl characters
    puts "Would you like to see the list of Studio Ghibli characters?"
    puts "Type ' y' for yes to continue. Or press any another key to exit."
    
    user_input = gets.strip.downcase
    
    # if user says yes
    if user_input == "y"
      puts "\n"
      puts "Excellent!"
      puts "\n"
      # display the list of character names
      list_of_SG_characters
      ask_user_for_character_choice
      
      sleep(2)
      puts "\n"
      
      list
    else
      puts "ByeBye!"
      puts "\n"
    end
    
  end
  
  def list_of_SG_characters
    # binding.pry
    CHARACTER.all.each_with_index do |name, index|
      puts "#{index}. #{name}"
    end
  end
  
  def ask_user_for_character_choice
    # ask user for choice
    puts "\n"
    puts "Enter the number of the character you'd like to know more about."
    index = gets.strip.to_i - 1
    
    # index valid? number between 0 and 20
    until index.between?(0, CHARACTER.all.length - 1)
      # keep asking for user input
      puts "Sorry, invalid input. Choose a valid number."
      index = gets.strip.to_i - 1
    end
    
    character_instance = CHARACTER.all[index]
    
    display_character_details(character_instance)
    
    
  end
  
  def display_character_details(character_instance)
    sleep(1)
    puts "\n"
    puts "Name:"+character_instance.name
    puts "\n"
    puts "Gender:"+character_instance.gender
    puts "\n"
    puts "Age:"+character_instance.age
    puts "\n"
    puts "Films:"+character_instance.films
    
  end
  
 end 