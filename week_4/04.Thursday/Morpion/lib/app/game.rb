class Game
  attr_accessor :current_player, :status, :arr_player, :table

  def initialize
    #creating 2 players,defining the status to 'on_going', define current_player
    @player_1 = Player.new
    @player_2 = Player.new
    @arr_player = [@player_1, @player_2]
    @status = "on going"

    #check token value
    if @player_1.player_token == @player_2.player_token
      puts "I'm switching your token as you both picked the same!"
      if @player_1.player_token == "X"
        @player_2.player_toker = "O"
      elsif @player_1.player_token == "O"
        @player_2.player_token = "X"
      end
    end
    
    @player_1.show_state
    @player_2.show_state

    #init the game board
    @table = Board.new
    
    #Print new board on screen
    Show.new.show_board(@table)
  end


  def turn
    counter = 1
    while @status == "on going" && counter < 10
      puts "Welcome to round number #{counter.to_s}"
      @current_player = @arr_player[i % 2] #checking alternatively the index of the player array
      @table.play_turn(@current_player, @table)

      #print updated board on screen
      Show.new.show_board(@table)
      
      #check if one of the players has won
      if @table.victory?(@table)
        @status = "WINNER"
        break
      end
      counter += 1
    end
  end
  
  def new_round
    puts "Would you like to play again bitches??"
    puts "Select: Y for Yes or N for No"
    answer = get.chomp.upcase
    while answer != "Y" || answer != "N"
      if answer == "Y"
        @table = Board.new
        @status = "on going"
        puts "新しいラウンドに行きましょう...あなたは明らかにこれ以上生産的なことは何もないので..."
        sleep(0.8)
        print "You                                 \r"
        sleep(0.5)
        print "You should                          \r"
        sleep(0.5)
        print "You should see                      \r"
        sleep(0.5)
        print "You should see your                 \r"
        sleep(0.5)
        print "You should see your face            \r"
        sleep(0.5)
        puts "You should see your face right now.."
        puts "Just kidding... ha ha ha ... let's start a new round... YaY ^^ "

        #Print new board on screen
        Show.new.show_board(@table)
        break
      elsif answer == "N"
        puts "Whatever dude... you suck!"
        exit
      end
      puts "Wrong answer you moron... I said:"
      puts "Select: Y for Yes or N for No"
      answer = get.chomp.upcase
    end
    puts "You selected #{answer}... Well done..."
    puts "أنت مذهل جدا"
    puts @status
  end

  def game_end
    if @status == "WINNER"
      puts "Well done.. You just wasted a huge amount of precious time that you will never get back... go read a fucking book.. #food_for_thoughts #{@current_player.name}" 
    elsif @status == "on going"
      puts "It's a draw"
    end
  end

end
