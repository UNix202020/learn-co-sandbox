class API 
  
  def self.fetch_characters
      url = 'https://ghibliapi.herokuapp.com/people'
      uri = URI(url)
      response = Net::HTTP.get(uri)
      hash = JSON.parse(response)
      
      array_of_characters = hash[1]
      
      array_of_characters.each_with_index do |character_hash|
        character = CHARACTER.new('name','gender','age','films')
        
        character.name = character_hash[1]
        character.gender = character_hash[1]
        character.age = character_hash[1]
        character.films = character_hash[1]
        character_hash
      end
end
end
