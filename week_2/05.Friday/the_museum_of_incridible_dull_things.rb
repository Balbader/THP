Arr = [3, 4, 5, 6, 1, 2, 7, 8]

def remove_smallest_basil
  puts "BASIL"
  print "Old Array = #{Arr}"
  puts
  puts
  puts "Smallest element to be removed: #{Arr.delete_at(Arr.index(Arr.min))}"
  puts
  print "New Array = #{Arr}"
  puts
end

def remove_smallest_yann
  puts "YANN"
  puts Arr.reject { |a| a < Arr.min}
end

remove_smallest_basil
puts
print "---------------------------------"
puts
remove_smallest_yann



