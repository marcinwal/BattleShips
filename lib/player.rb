
class Player

  INITIAL_SHIPS = {aircraft: 1, battleship: 1, destroyer: 1,patrol: 2, submarine: 2}

	def initialize
		@player_ships = []
		@board = Board.new(Cell)
		create_ships
	end

	def create_ships
		INITIAL_SHIPS.each do |k,v|  
			v.times {@player_ships << Ship.send(k)}
		end
	end

	def ship_count
		@player_ships.count
	end

  def read_input(string)
    l =  /[a..j]/i.match(string)
    n =  /\d+/.match(string)
    #to raise errors if not correct
    return l[0].upcase.ord - 'A'.ord, n[0].to_i
  end  

  def place_ship(ship,start_cell: input,dir: oriantation)
    x_coord, y_coord = read_input(start_cell)
    x2_coord = dir=='H' ? x_coord + ship.length - 1 : x_coord
    y2_coord = dir=='V' ? y_coord + ship.length - 1 : y_coord
    location =[x_coord, y_coord, x2_coord, y2_coord]
    @board.load_ship(ship: ship,location: location)
  end  

  def shoot(input) #it shoots A2 given as the string

  end

end