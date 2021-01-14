puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
print "> "
nb = gets.chomp.to_i
puts "Voici la pyramide :"

i = 1
j = 1
char = "#"
while nb >= i do
  puts " " * nb + "#{char}" * j
  nb -= 1
  j += 1
end
