require_relative 'coord_to_array'

class Player
  INITIAL_SHIPS = {aircraft: 1, battleship: 1, destroyer: 1,patrol: 2, submarine: 2}
	
	

  attr_reader :player_ships
  attr_reader :board  

	include Coord_to_array

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

   

  def shoot(input) #it shoots A2 given as the string
		x,y = read_input(input)
		@board.shoot(x,y)
  end

  def ships_sunk?
		@player_ships.all? {|ship| !ship.floating?}
  end

end