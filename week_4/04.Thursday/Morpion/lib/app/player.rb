class Player
  attr_accessor :player_name, :player_token

  def initialize
    @player_name = name
    @player_token = token
  end

  def show_state
    puts "#{@player_name} plays with the #{@player_token} token"
  end
  
  def name
    puts "Hey you!!! If you wanna play this game, give me $100 bucks.. or just enter your name: "
    print "> "
    name = gets.chomp
  end

  def token
    puts "So... Are you more of an X person or an O type of person???"
    puts "Just in case you didn't get the question, choose between X and O..."
    puts "Oh.. 1 last thing.. make sure they're caps.."
    puts "Go ahead.. choose now:"
    print "> "
    token = gets.chomp.upcase
    while token != "X" && token != "O"
      puts "What an idiot you are !!!"
      puts "So apparently.. that question was a bit too complex for your little peanut of a brain..."
      puts "Hmmmmm... A coloring book might be more suited for your entertainment needs..."
      puts "Anyway... Give it another try.. Choose between X and O you genius.."
      print "> "
      token = gets.chomp.upcase
    end
    return token
  end

end
