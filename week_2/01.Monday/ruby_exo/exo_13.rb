puts "Enter year of birth: "
date_of_birth = gets.chomp.to_i
year = 2021
while date_of_birth <= year do
  print "#{date_of_birth} "
  date_of_birth += 1
end
