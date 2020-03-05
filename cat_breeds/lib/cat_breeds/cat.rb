class CatBreedSelector::Cat

  attr_accessor :name, :position, :location, :url, :breed_name, :coat_length, :website_url, :breed_characteristics, :breed_personality

  @@all = []

  def self.new_from_index_page(r)
    self.new(
      r.css("h2").text,
      "https://www.https://cfa.org/breeds/#{r.css("a").attribute("href").text}",
      r.css("h3").text,
      r.css(".position").text
      )
  end

  def initialize(name=nil, url=nil, location=nil, position=nil)
    @name = name
    @url = url
    @location = location
    @position = position
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find(id)
    self.all[id-1]
  end

  def breed_name
    @breed_name ||= doc.css("div.c-4.nr.nt ul:nth-child(8) li").text
    # @best_dish ||= doc.xpath("//div[@class='c-4 nr nt']/ul[3]/li").text
  end

  def coat_length
    @coat_length ||= doc.css("div.c-4.nr.nt ul:nth-child(6) li").text
    # @food_style ||= doc.xpath("//div[@class='c-4 nr nt']/ul[2]/li").text
  end

  def breed_characteristics 
    @breed_characteristics ||= doc.css("div.c-4.nr.nt ul:nth-child(10) li:nth-child(1)").text.split("+").join(". Tel: +")
    # @contact ||= doc.xpath("//div[@class='c-4 nr nt']/ul[4]/li[1]").text.split("+").join(". Tel: +")
  end

  def breed_personality
    @breed_personality ||= doc.css("div.c-4.nr.nt ul:nth-child(3) li").text.split(" (pictured)").join("")
    # @head_chef ||= doc.xpath("//div[@class='c-4 nr nt']/ul[1]/li").text.split(" (pictured)").join("")
  end

  def website_url
    @website_url ||= doc.css("div.c-4.nr.nt ul:nth-child(10) li:nth-child(2) a").text
    # @website_url ||= doc.xpath("//div[@class='c-4 nr nt']/ul[4]/li[2]/a").text
  end

  #def description
    #@description ||= doc.css("div.c-8.nl.nt > p:nth-child(6)").text
    # @description ||= doc.xpath("//div[@class='c-8 nl nt']/p[3]").text
  #end

  def doc
    @doc ||= Nokogiri::HTML(open(self.url))
  end
end