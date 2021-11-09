require "./Player"
require "./Question"
class Game
  
  def initialize
    @player1 = Player.new("Player 1", 3)
    @player2 = Player.new("Player 2", 3)
    @current_player = @player1
  end
  


  def swapPlayer
    if (@current_player == @player1)
      @current_player = @player2
    else
      @current_player = @player1
    end
  end
  
  def isGameOngoing
    (@player1.lives != 0 && @player2.lives != 0)
  end

  def game_loop
    while isGameOngoing()
      question = Question.new
      puts "#{@current_player.name}: #{question.question}"
      if (gets.chomp.to_i == question.result)
        puts "#{@current_player.name}: YES! You are correct."
      else 
        @current_player.lose_life
        puts "#{@current_player.name}: Seriously? No!"
      end
      swapPlayer()
    end
    puts "#{@current_player.name} wins with a score of #{@current_player.lives}/3"
    puts "GAME OVER"
  end

end















# Game class would have methods to decide a new turn, and end the game
# The game will run in a loop until the win/lose condition is met, then break out of the loop with a result response
# Inside the loop we will ask questions to prompt the user for a response -> return back correct/incorrect
# turn 0 -> player 1

# let @player1 = player1object
# let @player2 = player2object
# let currentplayer = player1
# let isGameOngoing = true while currentplayer.lives > 0
# def swapPlayer
#   if (currentplayer === player1){
#     currentplayer = player2
#   }
#   else {
#   currentplayer = player1
# }
# end

# def isGameOngoing
#   if (player1.lives && player2.lives > 0) {
#     return true
#   }
#   else {
#     isGameOngoing === false
#   }
# end

# def gameLoop 
#   while isGameOngoing 
#   question[currentplayer]
#   isGameOngoing
#   swapPlayer
#   end
#   puts "GAME OVER"
# end
  
