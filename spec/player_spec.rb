require 'player'
require 'ship'

describe 'player' do 

let(:player) {Player.new}

	it 'should have seven ships initially' do
		expect(player.ship_count).to eq(7)
	end

end