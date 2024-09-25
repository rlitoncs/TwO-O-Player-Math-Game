class Player
  attr_reader(:name)
  attr_accessor(:lives)

  def initialize(player)
    @name = player
    @lives = 3
  end
  
  def lose_life
    @lives -= 1
  end
end