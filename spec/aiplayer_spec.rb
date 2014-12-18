require 'aiplayer'
require 'board'
require 'cell'
require 'player'
require 'ship'

describe 'aiplayer' do 

  aiplayer = AIplayer.new

  it 'should shoot at random places on board' do
    expect(aiplayer.random_cell[1]).to be < 10
    expect(aiplayer.random_cell[1]).to be >= 0 
  end

  it 'should place the 5th ship' do 
    aiplayer.place_ai_ships  
    expect(aiplayer.board.table[0][0].ship).to eq(aiplayer.player_ships[6])
  end
  
end