require 'nokogiri'
require 'httparty'
require 'byebug'

def scraper
  url = "https://scrapethissite.com/pages/simple/"
  unparsed_page = HTTParty.get(url)
  parsed_page = Nokogiri::HTML(unparsed_page)
  byebug
end
puts "hello world"


scraper
