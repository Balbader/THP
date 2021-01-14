def ask_first_name
  puts "Enter first name:"
  first_name = gets.chomp
  return first_name
end

def say_hello
  name = ask_first_name
  return "Hello #{name} :)"
end

puts say_hello
