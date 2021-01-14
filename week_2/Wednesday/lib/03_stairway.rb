puts "Hit the letter 'd' on your keyboard followed by enter."
answer = gets.chomp

def check_prout(prout)
    while prout < 10
      nbr = rand(1..6).to_i
      if prout < 10
        if nbr == 5 || nbr == 6
          prout += 1
          puts prout.to_s
          puts "Again"
          answer = gets.chomp
        end
        if nbr == 1
          prout -= 1
          puts prout.to_s
          puts "One More Time"
          answer = gets.chomp
        end
        if nbr == 2 || nbr == 3 || nbr == 4
          prout == prout
          puts prout.to_s
          puts "Keep Going"
          answer = gets.chomp
        end
        if prout == 10
          puts "You Win"
        end
      end
    end
end

if answer == "d"
  stairs = 0
  nbr = rand(1..6).to_i
  check_prout(stairs)
end
