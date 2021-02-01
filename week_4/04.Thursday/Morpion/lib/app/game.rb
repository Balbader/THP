require_relative 'board'
require 'view/show'
require_relative 'player'


class Game
    attr_accessor :current_player, :status, :arr_player, :board

  def initialize
    # creating 2 players,defining the status to 'on_going', define current_player
    @player_1 = Player.new
    @player_2 = Player.new
    @arr_player = [@player_1,@player_2]
    @status = 'on going'

    # check token value
    if @player_1.player_token == @player_2.player_token
      puts "I'm switnching your token as you both picked the same one... "
      if @player_1.player_token == 'X'
        @player_2.player_token = 'O'
      elsif @player_1.player_token == 'O'
        @player_2.player_token = 'X'
      end
    end

    @player_1.show_state
    @player_2.show_state

    # create the boardgame
    @board = Board.new

    # print the boardgame to the terminal
    Show.new.show_board(@board)
  end

  def turn

    counter = 0
    while @status == "on going" && counter < 9
      @current_player = @arr_player[counter % 2] # cheking who's player is it the turn and assigning that player to the current_player variable
      @board.play_turn(@board, @current_player)

      # Print the current boardgame to the terminal
      Show.new.show_board(@board)

      # check if one of the players has won
      if @board.victory?(@board)
        @status = 'WINNER'
        break
      end

      counter += 1
    end
  end

  def new_round
    puts "Would you like to play again bitches??"
    puts "Select: Y for Yes or N for NO"
    answer = gets.chomp.upcase
    while answer != 'Y' || answer != 'N'
      if answer == 'Y'
        @board = Board.new
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
        puts "You should see your face right now..\r"
        puts "Just kidding... ha ha ha... let's start a new round... YaY ^^"

        # print new board on screen
        Show.new.show_board(@board)
        break
      elsif answer == 'N'
        puts "Whatever dude... you suck"
        exit
      end
      puts "Wrong answer you moron... I said:"
      puts "Select: Y for Yes or N for No"
      answer = get.chomp.upcase
    end
    puts "You selected #{answer}... Well done..."
    puts "أنت مذهل جدا"
    p @status
  end

  def game_end
    if @status == "WINNER"
      puts "Well done.. You just wasted a huge amount of precious time that you will never get back... go read a fucking book.. #food_for_thoughts #{@current_player.player_name}"
    elsif @status == "on going"
      puts "It's a draw"
    end
  end

end
