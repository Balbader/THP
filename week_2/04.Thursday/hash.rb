# create a mapping of state to abbreviation

states = {
  "Oregon" => "OR",
  "Florida" => "FL",
  "California" => "CA",
  "New York" => "NY",
  "Michigan" => "MI"
}


# creaite a basic set of states and some cities in them

cities = {
  "CA" => "San Francisco",
  "MI" => "Detroit",
  "FL" => "Jacksonville"
}


# add some cities

cities["NY"] = "New York"
cities["OR"] = "Portland"


# puts out some cities

puts "-" * 10
puts "NY State has: #{cities["NY"]}"
puts "OR State has: #{cities["OR"]}"


# do it by using the state then cities dict

puts "-" * 10
puts "Michigan has: #{cities[states["Michigan"]]}"
puts "Florida has: #{cities[states["Florida"]]}"


# puts ever state abbreviation

puts "-" * 10
states.each do |state, abbrev|
  puts "#{state} is abbreviated #{abbrev}"
end


# puts every city in state

puts "-" * 10
cities.each do |abbrev, city|
  puts "#{abbrev} has the city #{city}"
end


# now do moth at the same time

puts "-" * 10
cities.each do |state, abbrev|
  city = cities[abbrev]
  puts "#{state} is abbreviated #{abbrev} and has city #{city}"
end

puts "-" * 10
# by default ruby says "nil" when somethingh isn't in there
state = states["Texas"]

if !state
  puts "Sorry, no Texas."
end

# default values usein //= with the nil result

city = cities["TX"]
city ||= "Does Not Exist"
puts "The city for the state 'TX' is: #{city}"
