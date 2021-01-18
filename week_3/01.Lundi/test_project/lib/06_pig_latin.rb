def translate(str)
  vowels = ["a", "e", "i", "o", "u"]

  if vowels.include? str[0]
    str + "ay"
  elsif str[0..1] == "qu"
    str[2..-1] + "quay"
  elsif str[1..2] == "qu"
    str[3..-1] + str[0..2] + "ay"
  elsif !(vowels.include? str[0]) && !(vowels.include? str[1]) && !(vowels.include? str[2])
    str[3..-1] + str[0..2] + "ay"
  elsif !(vowels.include? str[0]) && !(vowels.include? str[1])
    str[2..-1] + str[0..1] + "ay"
  else
    str[1..-1] + str[0] + "ay"
  end
end

puts translate("apple")
puts translate("banana")
puts translate("cherry")
puts translate("eat pie")
puts translate("three")
puts translate("school")
puts translate("quiet")
puts translate("square")
puts translate("the quick brown fox")


