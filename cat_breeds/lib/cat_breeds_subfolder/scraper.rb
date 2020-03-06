require 'nokogiri'
require 'open-uri'
require 'pry'
 
require_relative './cat.rb'
 
class Scraper
 
  def get_page
      doc = Nokogiri::HTML(open("https://cfa.org/breeds/"))
 
      binding.pry
  end
 
end
 
Scraper.new.get_page