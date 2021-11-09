# Question class will generate by picking two numbers between 1 and 20
# number generator method
# method to check the answer
# This class will need to speak with which player the question is belonging to
# Player 1: What does 5 plus 3 equal?

function TurnQuestion = (player){
  let a = Math.random(1-20)
  let b = Math.random(1-20)
  let result = a + b

  console.log(`What does ${a} plus ${b} equal`)
  if process.argv === result
    return good
  else 
    player.life -1
    return bad-string
}
