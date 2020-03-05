class CatBreedSelector::CLI

  def call
    CatBreedSelector::Scraper.new.make_cats
    puts "Hello! Welcome to the cat breed selector! Tell me what characteristics you are looking for in your next pet!"
    start
  end

  def start
    #puts ""
    puts "What characteristics are important to you? Docile and Calm, Energetic and Active, Cuddly and Affectionate?"
    #input = gets.strip.to_i

    #print_cats(input)

    puts ""
    puts "What breed would you like to know more about?"
    input = gets.strip

    restaurant = CatBreedSelector::Cat.find(input.to_i)

    #print_cat(cat)

    puts ""
    puts ""

    input = gets.strip.downcase
    if input == "Cuddly and affectionate"
      puts "Then you want  _ breed!"
    elsif input == "Energetic and active"
      puts "Then you want _ breed!"
    elsif input == "Docile and calm"
      puts "Then you want _ breed!"
      puts ""
     
      exit
    else
      puts ""
      puts "Sorry, you need to tell me what you are looking for in a breed."
      start
    end
  end

  def print_restaurant(restaurant)
    puts ""
    puts "----------- #{restaurant.name} - #{restaurant.position} -----------"
    puts ""
    puts "Location:           #{restaurant.location}"
    puts "Head Chef:          #{restaurant.head_chef}"
    puts "Style of Food:      #{restaurant.food_style}"
    puts "Standout Dish:      #{restaurant.best_dish}"
    puts "Contact:            #{restaurant.contact}"
    puts "Website:            #{restaurant.website_url}"
    puts ""
    puts "---------------Description--------------"
    puts ""
    puts "#{restaurant.description}"
    puts ""
  end

  def print_restaurants(from_number)
    puts ""
    puts "---------- Restaurants #{from_number} - #{from_number+9} ----------"
    puts ""
    WorldsBestRestaurants::Restaurant.all[from_number-1, 10].each.with_index(from_number) do |restaurant, index|
      puts "#{index}. #{restaurant.name} - #{restaurant.location}"
    end
  end

end