def pyramid_reverse(nb)
  (nb).times do |i|
    (i).times do
      print " "
    end
    (2 * nb - 2 * i - 1).times do
      print "#"
    end
    puts
  end
end

def wtf_pyramid
  puts "Salut, bienvenue dans ma super pyramide ! Entre un numero entre 1 et 25 ?"
  print "> "
  nb = gets.chomp.to_i
  puts "Voici la pyramide :"
  if nb > 25 || nb < 1
    puts "Error!"
  else
    nb.times do |i|
      puts " " * (nb - i - 1) + "#" * (i + i + 1)
    end
  end
  pyramid_reverse(nb)
end

wtf_pyramid
