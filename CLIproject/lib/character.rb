class CHARACTER 
  attr_accessor :name,:gender,:age,:films
  
  @@all =[]
  
  def initialize(name, gender, age, films)
    @@all << self
    @name=name
    @gender=gender
    @age=age
    @films=films
  end
  
  def self.all
      @@all
  end
  
end
