class Board


	attr_reader :table
	
	def initialize(cell, size: size)
		@table = {}
		(1..size).each { |c| @table[c] = Array.new(size) {cell} }
	end

  def load_ship(ship: ship)
  end  
	

end
