require 'cell'
require 'ship'

describe 'cell' do

	let(:cell) {Cell.new}
  let(:ship) {Ship.new(length: 2)}
		
	it 'should be able to be shot at' do
		
		cell.shoot_at
		expect(cell).to be_shot

	end


	it 'should store the object' do 
    cell.load(ship)
    expect(cell.ship).to eq(ship)
	end


end