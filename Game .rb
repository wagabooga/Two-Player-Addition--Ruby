# Game class would have methods to decide a new turn, and end the game
# The game will run in a loop until the win/lose condition is met, then break out of the loop with a result response
# Inside the loop we will ask questions to prompt the user for a response -> return back correct/incorrect


turn 0 -> player 1

let player1 = player1object
let player2 = player2object
let currentplayer = player1
let isGameOngoing = true while currentplayer.lives > 0
def swapPlayer
  if (currentplayer === player1){
    currentplayer = player2
  }
  else {
  currentplayer = player1
}
end

def isGameOngoing
  if (player1.lives && player2.lives > 0) {
    return true
  }
  else {
    isGameOngoing === false
  }
end

def gameLoop 
  while isGameOngoing 
  question[currentplayer]
  isGameOngoing
  swapPlayer
  end
  puts "GAME OVER"
end
  
