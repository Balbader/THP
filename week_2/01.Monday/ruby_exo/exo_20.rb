puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
print "> "
nb = gets.chomp.to_i
puts "Voici la pyramide :"

i = 1
char = "#"
while i <= nb do
  puts "#{char}" * i + " "
  i += 1
end
