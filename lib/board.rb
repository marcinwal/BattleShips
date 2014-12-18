# require 'byebug'
require_relative 'coord_to_array'
require_relative 'errors'

class Board

attr_reader :table
	# attr_writer :table

	include Coord_to_array
	include Errors

	DEFAULT_SIZE = 5

	def initialize(cell,size: size1 = DEFAULT_SIZE)
		@table = []
		(0...size).each { |c| @table[c] = Array.new(size) {Cell.new} }
	end

	test = Proc.new { (y1..y2).each {|y| @table[x1][y].load(ship) } }
	
	

	def place_ship(ship: ship,start_cell: start_cell,dir: oriantation)
    x_coord, y_coord = read_input(start_cell)
    x2_coord = dir=='V' ? x_coord + ship.length - 1 : x_coord
    y2_coord = dir=='H' ? y_coord + ship.length - 1 : y_coord
    location =[x_coord, y_coord, x2_coord, y2_coord]
    check_cell(x_coord,y_coord)
    load_ship(ship: ship,location: location)
  end 

  def check_cell x, y
  	error('ship is already there') if @table[x][y].ship != nil
		
  end

  def load_ship(ship: ship,location: location)
	  x1, y1, x2, y2 = location
# byebug
		if x1 == x2
			 error("coordinates do not match a ship lenght") if (y2 - y1) + 1 != ship.length
	  	(y1..y2).each {|y| @table[x1][y].load(ship) }
		elsif y1 == y2
			error("coordinates do not match a ship lenght") if (x2 - x1) + 1 != ship.length
			(x1..x2).each {|x| @table[x][y1].load(ship) }
		else
			error("stupid coordinates")
		end
  end  

	
	def shoot(x,y)
		table[x][y].shoot_at 
	end

end


