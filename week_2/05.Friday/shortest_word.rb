puts "Enter a string: "
print "> "
Str = gets.chomp

def shortest_word
  puts Str.split(" ").sort! { |a, b| a.length <=> b.length}[0]
end

shortest_word
