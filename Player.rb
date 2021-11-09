class Player
  attr_accessor :name, :lives
  
  def initialize(name, lives)
    @name = name
    @lives = lives
  end
  
  def lose_life
    @lives -= 1
  end
end






















# Player class would have methods that define the players stats: i.e. health and player name

# player1 = Player.new("Player 1", 3)
# player2 = Player.new("Player 2", 3)
# puts player1.name