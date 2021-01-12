puts "Salut, bienvenue dans ma super pyramide ! Entre un numero entre 1 et 25 ?"
print "> "
nb = gets.chomp.to_i

i = 0
j = 0
char = "#"
if nb > 25
  puts "Error!"
else
  puts "Voici la pyramide :"
  print " " * (nb - nb / 2)
  while nb >= i do
    print " " * (nb / 2)
    puts "#{char}" * (2 * j + 1)
    print " " * (nb / 2)
    nb -= 1
    j += 1
  end
end
