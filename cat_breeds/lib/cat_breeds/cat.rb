class Cat
  attr_accessor :breed_name, :breed_characteristics, :breed_personality
  @@all = []

  def initialize
    @@all.push(self)
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end
end
  
  