require_relative 'board_case'

class Board

	attr_accessor :arr_boardcase

	def initialize
		@case1 = BoardCase.new("A1",'.')
		@case2 = BoardCase.new("A2",'.')
		@case3 = BoardCase.new("A3",'.')
		@case4 = BoardCase.new("B1",'.')
		@case5 = BoardCase.new("B2",'.')
		@case6 = BoardCase.new("B3",'.')
		@case7 = BoardCase.new("C1",'.')
		@case8 = BoardCase.new("C2",'.')
		@case9 = BoardCase.new("C3",'.')
		@arr_boardcase = [@case1,@case2,@case3,@case4,@case5,@case6,@case7,@case8,@case9]
	end

	def play_turn(board,current_player)
    game_on = true
    while game_on
      print "#{current_player.player_name}, which position would you like to hit? "
      answer = gets.chomp.upcase
      case answer
      when "A1"
          if board.arr_boardcase[0].token == '.'
            board.arr_boardcase[0].token  = current_player.player_token
            game_on = false
          else
            puts "You fucked... choose another one!"
          end
      when "A2"
          if board.arr_boardcase[1].token == '.'
            board.arr_boardcase[1].token  = current_player.player_token
            game_on = false
          else
              puts "In your case, suicide is considered as a duty... choose another one!"
          end
      when "A3"
          if board.arr_boardcase[2].token == '.'
              board.arr_boardcase[2].token  = current_player.player_token
              game_on = false
          else
              puts "Come on dude.. What the hell!! Choose another one!"
          end
      when "B1"
          if board.arr_boardcase[3].token == '.'
              board.arr_boardcase[3].token  = current_player.player_token
              game_on = false
          else
              puts "Seriously... Go get a brain.. and while you're at it.. choose another one!"
          end
      when "B2"
          if board.arr_boardcase[4].token == '.'
              board.arr_boardcase[4].token  = current_player.player_token
              game_on = false
          else
              puts "I'm looking for a job.. now way I'm sticking around. Meanwhile.. choose another one!"
          end
      when "B3"
          if board.arr_boardcase[5].token == '.'
              board.arr_boardcase[5].token  = current_player.player_token
              game_on = false
          else
              puts "I have a rope for you... and you should use it. But first choose another one!"
          end
      when "C1"
          if board.arr_boardcase[6].token == '.'
              board.arr_boardcase[6].token  = current_player.player_token
              game_on = false
          else
              puts "Kill yourself! but first choose another one!"
          end
      when "C2"
          if board.arr_boardcase[7].token == '.'
              board.arr_boardcase[7].token  = current_player.player_token
              game_on = false
          else
              puts "Stop pushing the Q-tip when it hits a wall!!!! Choose another one."
          end
      when "C3"
          if board.arr_boardcase[8].token =='.'
              board.arr_boardcase[8].token  = current_player.player_token
              game_on = false
          else
              puts "While I'm starting to dig my own grave and burry myself in it, I suggest that you chooser another one!"
          end
        else
          puts "Fucking wrong spot you idiot!"
      end
    end
	end

	def victory?(board)
		# Tests for all horizontal combos
		if board.arr_boardcase[0].token == 'X' && board.arr_boardcase[1].token == 'X' && board.arr_boardcase[2].token == 'X'
			return true
		end
		if board.arr_boardcase[0].token == 'O' && board.arr_boardcase[1].token == 'O' && board.arr_boardcase[2].token == 'O'
			return true
            end
		if board.arr_boardcase[3].token == 'X' && board.arr_boardcase[4].token == 'X' && board.arr_boardcase[5].token == 'X'
			return true
		end
		if board.arr_boardcase[3].token == 'O' && board.arr_boardcase[4].token == 'O' && board.arr_boardcase[5].token == 'O'
			return true
		end
		if board.arr_boardcase[6].token == 'X' && board.arr_boardcase[7].token == 'X' && board.arr_boardcase[8].token == 'X'
			return true
		end
		if board.arr_boardcase[6].token == 'O' && board.arr_boardcase[7].token == 'O' && board.arr_boardcase[8].token == 'O'
			return true
		end

		# test for all vertical combos
		if board.arr_boardcase[0].token == 'X' && board.arr_boardcase[3].token == 'X' && board.arr_boardcase[6].token == 'X'
			return true
		end
		if board.arr_boardcase[0].token == 'O' && board.arr_boardcase[3].token == 'O' && board.arr_boardcase[6].token == 'O'
			return true
		end
		if board.arr_boardcase[1].token == 'X' && board.arr_boardcase[4].token == 'X' && board.arr_boardcase[7].token == 'X'
			return true
		end
		if board.arr_boardcase[1].token == 'O' && board.arr_boardcase[4].token == 'O' && board.arr_boardcase[7].token == 'O'
			return true
		end
		if board.arr_boardcase[2].token == 'X' && board.arr_boardcase[5].token == 'X' && board.arr_boardcase[8].token == 'X'
			return true
		end
		if board.arr_boardcase[2].token == 'O' && board.arr_boardcase[5].token == 'O' && board.arr_boardcase[8].token == 'O'
			return true
		end

		# test for all diagonal
		if board.arr_boardcase[0].token == 'X' && board.arr_boardcase[4].token == 'X' && board.arr_boardcase[8].token == 'X'
			return true
		end
		if board.arr_boardcase[0].token == 'O' && board.arr_boardcase[4].token == 'O' && board.arr_boardcase[8].token == 'O'
			return true
		end
		if board.arr_boardcase[2].token == 'X' && board.arr_boardcase[4].token == 'X' && board.arr_boardcase[6].token == 'X'
			return true
		end
		if board.arr_boardcase[2].token == 'O' && board.arr_boardcase[4].token == 'O' && board.arr_boardcase[6].token == 'O'
			return true
		end

	end
end
