puts "Enter age:  " 
age = gets.chomp.to_i
year = 2021
year_of_birth = 2021 - age
age_of_birth = 0

  while age >= age_of_birth
    puts "In #{year} you were #{age}"
    year_of_birth -= 1
    age -= 1
    year -= 1
  end

