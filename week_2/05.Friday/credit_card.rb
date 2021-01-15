puts "Enter a string: "
length = gets.chomp.to_i

def blur(tail = 4, char = '#')
    if (Length <= tail)
      self
    else
      char * (Length - tail) + self[-tail, tail]
    end
  end

def mask(length)
    length[0..-5] = '#' * (length.length - 4)
    length
end

puts mask("#{length}")

=begin
puts "Enter a string: "
str = gets.chomp
i = 0
count = 0
while str[i]
  print str[i]
  print str[i].replace "#" 
  if str.length - count == 5
    while str[i]
      print str[i]
      i += 1
    end
  end
  i += 1
  count += 1
end
=end
