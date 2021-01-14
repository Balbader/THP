puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu compris entre 1 et 25 ?"
print "> "
n = gets.to_i

if n < 1 || n > 25
    print "Erreur, met des étages entre 1 et 25 !"
else
    for i in 1..n
    puts "#{Array.new(i, "#").join('')}  #{Array.new(n - i, " ").join('')}"
    end
end
