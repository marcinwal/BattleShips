require 'ship'

describe 'ship' do 

	let(:ship) {Ship.new(length: 3)}

	it 'should have a length' do

		expect(ship.length).to eq(3)
	
	end
end


