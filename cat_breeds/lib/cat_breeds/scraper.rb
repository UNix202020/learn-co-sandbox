require 'nokogiri'
require 'open-uri'


doc = Nokogiri::HTML(open("https://cfa.org/breeds/"))
cat_breeds = doc.css("")
 
cat_breeds.each do |cat_breed|
  puts cat_breeds.text.strip
end