puts "Enter age:  " 
age = gets.chomp.to_i
year = Time.now.year - age
age = 0

while year <= Time.now.year
  if Time.now.year - year == age
    puts "Il y'a #{Time.now.year - year}, tu avais la moitié de ton age."
    year += 1
    age += 1
  end
  puts "Il y'a #{Time.now.year - year}, tu avais #{age} ans"
  year += 1
  age += 1
end
