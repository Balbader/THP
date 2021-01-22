file = File.open("/Users/basilalbader/dev/the_hacking_project/THP/week_3/05.Vendredi/Gemfile", "w")

contenu = file.puts("source 'https://rubygems.org'\ngem'pry'")

puts "add gem"

#get user input
input = gets.chomp

#get argument value
input = ARGV.join()
#note: never use "gets.chomp" and "ARGV" together as it will crash the program. 
#In case you need both in your program (you moron!!!) make sure to use the following command after "ARGV"
ARGV.clear

file.close

file = File.open("/Users/basilalbader/dev/the_hacking_project/THP/week_3/05.Vendredi/Gemfile", "a")

file.puts("gem '#{input}'")

system("bundle install")
