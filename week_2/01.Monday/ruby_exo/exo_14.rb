puts "Enter a number: "
nb = gets.chomp.to_i
while nb >= 0 do
  print "#{nb} "
  nb -= 1
end
