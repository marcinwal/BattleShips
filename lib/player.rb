
class Player

INITIAL_SHIPS = {aircraft: 1, battleship: 1, destroyer: 1,patrol: 2, submarine: 2}

	def initialize
		@player_ships = []
		# @board = Board.new
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


end