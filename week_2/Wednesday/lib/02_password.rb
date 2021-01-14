def signup
  puts "Define password: "
  print ">"
  pwd = gets.chomp
  return pwd
end

def login
  pwd = signup
  puts "Enter password: "
  print ">"
  new_pwd = gets.chomp
  if new_pwd == pwd
    welcome_screen
  elsif new_pwd != pwd 
    while new_pwd != pwd
    puts "Wrong password!"
    puts "Please try again: "
    print "> "
    new_pwd = gets.chomp
    end
    if new_pwd == pwd
      welcome_screen
    end
  end
end

def welcome_screen
  puts "Well done :)"
end

login

