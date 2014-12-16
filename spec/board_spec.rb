require 'ship'
require 'cell'
require 'board'

describe 'board' do
	
let(:board) {Board.new}	
let(:cell) {Cell.new}

	it 'should have a board' do
		
		expect(board.table).not_to eq(nil) 

	end


end
