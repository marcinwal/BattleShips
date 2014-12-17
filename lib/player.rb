
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

  def place_ship(ship,start_cell: input,dir: oriantation)
    l =  /[a..j]/i.match(input)
    n =  /\d+/match(input)
    x_coord = l[0].upcase.ord - 'A'.ord
    y_coord = n[0].to_i

    x2_coord = dir=='H' ? x_coord + ship.length : x_coord
    y2_coord = dir=='V' ? y_coord + ship.length : y_coord

    location =[x_coord, y_coord, x2_coord, y2_coord]

    @board.load_ship(ship: ship,location: location)

  end  

end