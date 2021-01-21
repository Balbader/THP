require 'rubygems'
require 'nokogiri'
require 'open-uri'

def get_email_villeron
  page = Nokogiri::HTML(URI.open("http://annuaire-des-mairies.com/95/villeron.html"))
  name = page.xpath('//html/body/div[1]/main/section[2]/div/table/tbody/tr[4]/td[2]')
  email = page.xpath('//html/body/div[1]/main/section[2]/div/table/tbody/tr[1]/td[2]')
  city_name = name.text
  city_email = email.text

  city_hash = Hash[city_name, city_email]
  print city_hash
end


def my_city
  page = Nokogiri::HTML(URI.open("http://annuaire-des-mairies.com/val-d-oise.html"))
  column_1 = page.xpath('//tr[1]/td[1]/p')
  column_2 = page.xpath('//tr[1]/td[2]/p')
  column_3 = page.xpath('//tr[1]/td[3]/p')
  print column_1.text
  print column_2.text
  print column_3.text
end

get_email_villeron
