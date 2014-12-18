require_relative 'player'

class AIplayer < Player
  
  def initialize
    super
    place_ai_ships
  end

  def place_ai_ships
  end  

  def shootai
    return rand(self.board.size),rand(self.board.size)
  end

end