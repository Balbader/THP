puts "Salut, bienvenue dans ma super pyramide ! Entre un numero entre 1 et 25 ?"
print "> "
nb = gets.chomp.to_i
puts "Voici la pyramide :"
if nb > 25 || nb < 1
  puts "Error!"
else
nb.times do |n|
  puts " " * (nb - n - 1) + "#" * (n + n + 1)
end
