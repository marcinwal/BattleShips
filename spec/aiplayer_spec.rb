require 'aiplayer'
require 'board'
require 'cell'
require 'player'
require 'ship'

describe 'aiplayer' do 

  aiplayer = AIplayer.new

  it 'should shoot at random places on board' do
    expect(aiplayer.shootai[0]).to be < 10
    expect(aiplayer.shootai[0]).to be >= 0 
  end
  
end