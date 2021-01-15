puts "YANN"

def get_str
  puts "please enter a string of your choice: "
  print "> "
  str = gets.chomp
  return str
end

def delete_vls(str)
  puts str.delete("aeiouAEIOU")
end

delete_vls(get_str)
