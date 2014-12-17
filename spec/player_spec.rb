require 'player'
require 'ship'

describe 'player' do 

let(:player) {Player.new}
let(:ship) {double(:ship,length: 3)}

	it 'should have seven ships initially' do
		expect(player.ship_count).to eq(7)
	end

  it 'should place a ship on players board' do
    player.place_ship(ship: ship,start_cell: "A2", dir: 'H')
  end  

    it 'should test a string and return 0,10' do

    expect(player.read_input("c10")).to eq([2,9])
  end  
end