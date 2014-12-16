require 'cell'
require 'ship'

describe 'cell' do

	let(:cell) {Cell.new}
		
	it 'should be able to be shot at' do
		
		cell.shoot_at
		expect(cell).to be_shot

	end

	it 'should store the object' do 

	end


end