class API 
  
  def self.fetch_characters
      url = 'https://ghibliapi.herokuapp.com/people'
      uri = URI(url)
      response = Net::HTTP.get(uri)
      hash = JSON.parse(response)
      
      array_of_characters = hash["characters"]
      
      array_of_characters.each do |character_hash|
        character = CHARACTER.new 
        character.name = character_hash["strCharacter"]
        character.gender = character_hash["strGender"]
        character.age = character_hash["strAge"]
        character.films = character_hash["strFilms"]
      end
  end
  
end 