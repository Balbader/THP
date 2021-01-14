def ask_floor
  puts "Enter floor numbers:"
  print "> "
  return gets.chomp
end

def build_floor(total_floor, current_floor)
  print " " * (current_floor - total_floor)
  print "#" * (2 * total_floor - 1)
  puts
end

def build_pyramid(total_floor)
  puts "There you go: "

  total_floor.times do |current_floor|
    build_floor(current_floot + 1, total_floor)
  end
end

def full_pyramid
  build_pyramid(ask_floor)
end

full_pyramid

