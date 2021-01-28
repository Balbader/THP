require_relative 'board_case'

class Board
  attr_accessor :arr_boardcase

  def initialize
    @case_1 = BoardCase.new("A1", ".")
    @case_2 = BoardCase.new("A2", ".")
    @case_3 = BoardCase.new("A3", ".")
    @case_4 = BoardCase.new("B1", ".")
    @case_5 = BoardCase.new("B2", ".")
    @case_6 = BoardCase.new("B3", ".")
    @case_7 = BoardCase.new("C1", ".")
    @case_8 = BoardCase.new("C2", ".")
    @case_9 = BoardCase.new("C3", ".")
    @arr_boardcase = [@case_1, @case_2, @case_3, @case_4, @case_5, @case_6, @case_7, @case_8, @case_9]
  end

  def play_turn(actual_player, table)
    game_on = true
    while game_on
      puts "#{actual_player.player_name} what position would you like ?"
      answer = gets.chomp.upcase
      case answer
      when ("A1")
        if table.arr_boardcase[0].token == "."
          table.arr_boardcase[0].token = actual_player.token
          game_on = false
        else
          puts "You fucked, try again !"
        end
      when ("A2")
        if table.arr_boardcase[1].token == "."
          table.arr_boardcase[1].token = actual_player.token
          game_on = false
        else
          puts "You fucked, try again !"
        end
      when ("A3")
        if table.arr_boardcase[2].token == "."
          table.arr_boardcase[2].token = actual_player.token
          game_on = false
        else
          puts "You fucked, try again !"
        end
      when ("B1")
        if table.arr_boardcase[3].token == "."
            table.arr_boardcase[3].token = actual_player.token
            game_on = false
        else
            puts "You fucked, try again !"
        end
      when ("B2")
        if table.arr_boardcase[4].token == "."
            table.arr_boardcase[4].token = actual_player.token
            game_on = false
        else
            puts "You fucked, try again !"
        end
      when ("B3")
        if table.arr_boardcase[5].token == "."
            table.arr_boardcase[5].token = actual_player.token
            game_on = false
        else
            puts "You fucked, try again !"
        end
      when ("C1")
        if table.arr_boardcase[6].token == "."
            table.arr_boardcase[6].token = actual_player.token
            game_on = false
        else
            puts "You fucked, try again !" 
        end
      when ("C2")
        if table.arr_boardcase[7].token == "."
            table.arr_boardcase[7].token = actual_player.token
            game_on = false
        else
            puts "You fucked, try again !"
        end
      when ("C3")
        if table.arr_boardcase[8].token == "."
            table.arr_boardcase[8].token = actual_player.token
            game_on = false
        else
            puts "You fucked, try again !"
        end
      else
      puts "WRONG SPOT"
      end
    end
  end 

  def victory?
    #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
    # la victoire y est quand
    ## 1- case 1/ case 2 / case 3 similaires
    ## 2- case 4/ case 5/ case 6  similaires
    ## 3- case 7/ case 8/ case 9  similaires
    ## 4- case 1/ case 4/ case 7  similaires
    ## 5- case 2/ case 5/ case 8  similaires
    ## 6- case 3/ case 6/ case 9  similaires
    ## 7- case 1/ case 5/ case 9  similaires
    ## 8- case 3/ case 5/ case 7  similaires
    ## 9- pas de similitudes ==> égalité

    if table.arr_boardcase[0].token = x && table.arr_boardcase[1].token = x && table.arr_boardcase[2].token = x
      puts "Congrats, YOU WON!"
    elsif table.arr_boardcase[0].token = x && table.arr_boardcase[3].token = x && table.arr_boardcase[6].token = x
      puts "Congrats, YOU WON!"
    elsif table.arr_boardcase[0].token = x && table.arr_boardcase[4].token = x && table.arr_boardcase[8].token = x
      puts "Congrats, YOU WON!"
    elsif table.arr_boardcase[3].token = x && table.arr_boardcase[4].token = x && table.arr_boardcase[5].token = x
      puts "Congrats, YOU WON!"
    elsif table.arr_boardcase[6].token = x && table.arr_boardcase[7].token = x && table.arr_boardcase[8].token = x
      puts "Congrats, YOU WON!"
    elsif table.arr_boardcase[1].token = x && table.arr_boardcase[4].token = x && table.arr_boardcase[7].token = x
      puts "Congrats, YOU WON!"
    elsif table.arr_boardcase[2].token = x && table.arr_boardcase[5].token = x && table.arr_boardcase[8].token = x
      puts "Congrats, YOU WON!"
    elsif table.arr_boardcase[2].token = x && table.arr_boardcase[4].token = x && table.arr_boardcase[6].token = x
      puts "Congrats, YOU WON!"

    #------------------- CAS DE VICTOIRE TOKEN "O"---------------------------------------------------------------

    elsif table.arr_boardcase[0].token = o && table.arr_boardcase[1].token = o && table.arr_boardcase[2].token = o
      puts "Congrats, YOU WON!"
    elsif table.arr_boardcase[0].token = o && table.arr_boardcase[3].token = o && table.arr_boardcase[6].token = o
      puts "Congrats, YOU WON!"
    elsif table.arr_boardcase[0].token = o && table.arr_boardcase[4].token = o && table.arr_boardcase[8].token = o
      puts "Congrats, YOU WON!"
    elsif table.arr_boardcase[3].token = o && table.arr_boardcase[4].token = o && table.arr_boardcase[5].token = o
      puts "Congrats, YOU WON!"
    elsif table.arr_boardcase[6].token = o && table.arr_boardcase[7].token = o && table.arr_boardcase[8].token = o
      puts "Congrats, YOU WON!"
    elsif table.arr_boardcase[1].token = o && table.arr_boardcase[4].token = o && table.arr_boardcase[7].token = o
      puts "Congrats, YOU WON!"
    elsif table.arr_boardcase[2].token = o && table.arr_boardcase[5].token = o && table.arr_boardcase[8].token = o
      puts "Congrats, YOU WON!"
    elsif table.arr_boardcase[2].token = o && table.arr_boardcase[4].token = o && table.arr_boardcase[6].token = o
      puts "Congrats, YOU WON!"
    else
      puts "Douchey.. nobody won dumbass"
    end
  end
end
