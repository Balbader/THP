#--------------- Using user input aka "gets.chomp"


file = File.open("/Users/basilalbader/dev/the_hacking_project/THP/week_3/05.Vendredi/Gemfile", "w")
contenu = file.puts("source 'https://rubygems.org'\n")
puts "add gem"
input = gets.chomp
file.puts("gem '#{input[i]}'")
file.close


#--------------- Using argument value aka "ARGV"

file = File.open("/Users/basilalbader/dev/the_hacking_project/THP/week_3/05.Vendredi/Gemfile", "a")
contenu = file.puts("source 'https://rubygems.org'\n")
input = ARGV

#note: never use "gets.chomp" and "ARGV" together as it will crash the program. 
#In case you need both in your program (you moron!!!) make sure to use the following command after "ARGV"
#===> ARGV.clear

i = 0
while i < input.length
  file.puts("gem '#{input[i]}'")
  i += 1
end
system("bundle install")
file.close
