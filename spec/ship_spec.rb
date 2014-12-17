require 'ship'

describe 'ship' do 

	let(:ship) {Ship.new(3)}

	it 'should have a length' do
    l = ship.length
		expect(l).to eq(3)
	end

  it 'should recieve hit' do
  	
    expect(ship).to receive(:hit).and_return(2)
    ship.hit
 
  end  

	it 'should be floating' do
		
		expect(ship).to be_floating

	end

  it 'should define the submarine' do
    expect(Ship.submarine.length).to eq(3) 
  end
end


