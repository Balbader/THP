puts "What's your birth year ?"
print "> "
birth_year = gets.chomp.to_i

while birth_year < Time.now.year do
  puts "#{birth_year += 1}"
end
#method alternative: 
# t = Time.now.year
# gets.to_i.upto(t) {|i| puts i}