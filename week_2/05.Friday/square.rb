puts "YOUSSEF'S CODE"
puts "Mets un chiffre et je t'en donnerai le carré"
Number = gets.chomp.to_i

def split_digits
  Number.to_s.split('').map(&:to_i)
end

def square(split_digits)
  arr = split_digits
  return (arr.map {|i| i**2}).join
end

print square(split_digits)