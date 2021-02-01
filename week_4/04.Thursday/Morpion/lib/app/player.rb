class Player
  attr_accessor :player_name, :player_token

  def initialize
    @player_name = gets_name
    @player_token = gets_token
  end

  def show_state
    puts "#{@player_name} plays with the #{@player_token} token"
  end
  
  def gets_name
    puts "Hey you!!! If you wanna play this game, give me $100 bucks.. or just enter your name: "
    print "> "
    name = gets.chomp
  end

  def gets_token
    puts "So... Are you more of an X person or an O type of person???"
    sleep(0.5)
    puts "Just in case you didn't get the question, choose between X and O..."
    sleep(0.5)
    puts "Oh.. 1 last thing.. make sure they're caps.."
    sleep(0.5)
    puts "Go ahead.. choose now:"
    print "> "
    token = gets.chomp.upcase
    while token != "X" && token != "O"
      puts "What an idiot you are !!!"
      sleep(0.5)
      puts "So apparently.. that question was a bit too complex for your little peanut of a brain..."
      sleep(0.5)
      puts "Hmmmmm... A coloring book might be more suited for your entertainment needs..."
      sleep(0.5)
      puts "Anyway... Give it another try.. Choose between X and O you genius.."
      print "> "
      token = gets.chomp.upcase
    end
    return token
  end
end
