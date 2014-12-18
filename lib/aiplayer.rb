require_relative 'player'

class AIplayer < Player
  
  def initialize
    super
    place_ai_ships
  end

  def place_ai_ships

     self.board.place_ship(ship: self.player_ships[6],start_cell: 'a1', dir: 'H')
   
  end  

  def random_cell
    return (rand(self.board.size) + 'A'.ord ).chr ,rand(self.board.size) + 1
  end

end