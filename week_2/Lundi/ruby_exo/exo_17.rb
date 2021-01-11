puts "Enter age:  " 
age = gets.chomp.to_i
year = 2021
year_of_birth = year - age
age_of_birth = 0

while age_of_birth < age - 1
  puts "#{year - year_of_birth} years ago, you were #{age_of_birth}"
  year_of_birth += 1
  age_of_birth += 1
end

if year - year_of_birth == 1
    puts "#{year - year_of_birth} year ago, you were #{age_of_birth}"
end

if age_of_birth = age
 puts "#{age - age/2} years ago, you were half of your age today!" 
end
