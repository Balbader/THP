puts "Enter date of birth: " 
year_of_birth = gets.chomp.to_i
year = 2021
age = 2021 - year_of_birth
age_of_birth = 0

while year_of_birth <= year do
  puts "Year: #{year_of_birth}"
  puts "Age in #{year_of_birth} : #{age_of_birth}"
  year_of_birth += 1
  age_of_birth += 1
end
