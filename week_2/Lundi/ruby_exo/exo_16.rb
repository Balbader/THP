puts "Enter date of birth: " 
year_of_birth = gets.chomp.to_i
year = 2021
age = 2021 - year_of_birth
age_of_birth = 0

if year_of_birth < year
  while year_of_birth < year
    puts "In  #{year_of_birth} you were #{age_of_birth}"
    year_of_birth += 1
    age_of_birth += 1
  end
end

if year_of_birth = year
  puts "As of #{year} you are #{year_of_birth}"
end

