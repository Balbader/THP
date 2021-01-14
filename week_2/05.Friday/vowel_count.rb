def get_str
  puts "please enter a string of your choice: "
  print "> "
  str = gets.chomp
  return str
end

def count_vowels(str)
  vowels = ["a", "e", "i", "o", "u"]
  count = 0
  str.split("").each do |i| 
    vowels.each do |j|
      if i == j
        count += 1
      end
    end
  end
  puts count
end

count_vowels(get_str)
