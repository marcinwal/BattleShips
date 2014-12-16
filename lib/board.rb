class Board

	attr_reader :table
	
	def initialize
		@table = {}
		(:a..:m).each { |c| @table[c] = Array.new(10,Cell.new) }
	end

	

end
