puts "Enter age:  " 
age = gets.chomp.to_i
year = 2021
year_of_birth = year - age
age_of_birth = 0

  while age_of_birth <= age
    puts "In #{year_of_birth} you were #{age_of_birth}"
    year_of_birth += 1
    age_of_birth += 1
  end

