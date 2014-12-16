class Board


	attr_reader :table

	
	def initialize(cell, size: size)
		@table = []
		(0..size-1).each { |c| @table[c] = Array.new(size) {cell} }
	end

  def load_ship(ship: ship, location)

	  x1 = location[1]
	  y1 = location[2]
		x2 = location[3]
		y2 = loaction[4]

		if x1 == x2
	  	table[][]
		elsif y1 == y2
			table[][]
		else
			raise "stupid coordinates"
		end


  end  
	

end
