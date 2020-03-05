class CatBreedSelector::Scraper

  def get_page
    Nokogiri::HTML(open("https://cfa.org/breeds/"))
  end

  def scrape_cat_breeds_index
     self.get_page.css("")
  end

  def make_breedss
    scrape_breeds_index.each do |r|
      CatBreedSelector::Cat.new_from_index_page(r)
    end
  end
end