print "Mettez votre phrase >"
String = gets.chomp.to_s

def maj_first_char
   puts String.split.map(&:capitalize).join(" ")
end
maj_first_char