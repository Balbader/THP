puts "Enter your age: "
age = gets.chomp.to_i
age.downto(0) {|i| puts "#{i} years ago, you were #{age - i}"}
