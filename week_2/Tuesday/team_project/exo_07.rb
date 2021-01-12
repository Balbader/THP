puts "chose a number pal"
print "> "
count = gets.chomp.to_i
x = 0

while x < count do
  x +=1
  puts "#{x}"
end