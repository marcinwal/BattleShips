require 'player'
require 'ship'

describe 'player' do 

let(:player) {Player.new}
let(:ship) {double(:ship,length: 3)}

	it 'should have seven ships initially' do
		expect(player.ship_count).to eq(7)
	end

  

    it 'should test a string and return 0,10' do

    expect(player.read_input("c10")).to eq([2,9])
  end  

	it 'should shoot a cell on the board' do
		player.shoot('A2')
		expect(player.board.table[0][1]).to be_shot
	end

	it 'should know when all the ships are sunk' do
		player.player_ships.each { |ship| ship.sink! }
		expect(player).to be_ships_sunk
	end

end