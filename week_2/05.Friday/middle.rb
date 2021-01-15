puts "YOUSSEF CODE"
puts "Hello, please type a word and we'll give you the middle letters of that word"
Answer = gets.chomp.to_s

def count_string
  if Answer.length.even?
  puts Answer[Answer.length / 2 - 1] + Answer[Answer.length / 2]
  else
  puts Answer[Answer.length / 2]
end
end

count_string