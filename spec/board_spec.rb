require 'ship'
require 'cell'
require 'board'

describe 'board' do


let(:cell) {Cell.new}	
let(:board) {Board.new(Cell)}	

let(:fake_ship){double(:ghost_ship,length: 2) }
let(:different_ship){double(:different_ship,length: 2) }

	it 'should have a board' do
		
		expect(board.table).not_to eq(nil) 

	end


  it 'should load a ship to the board' do
	location = [1, 1, 2, 1]
	board.load_ship(ship: fake_ship, location: location)
	expect(board.table[1][1]).not_to be_shot

  end

  it 'should raise an error when ship too long' do
    location = [1,1,7,1] 
    expect(lambda{board.load_ship(ship: fake_ship,location: location)}).to raise_error(RuntimeError,'coordinates do not match a ship lenght')
  end

	it 'should shoot a cell' do
		board.shoot(1,1)
		expect(board.table[1][1]).to be_shot
	end

	it 'should place a ship on players board' do
    board.place_ship(ship: fake_ship,start_cell: "A2", dir: 'H')
    expect(board.table[0][1].ship).to eq(fake_ship)
  end  

	it 'should check cells' do
		board.place_ship(ship: fake_ship,start_cell: 'a1',dir: 'H')
		expect{board.place_ship(ship: different_ship,start_cell: 'a1',dir: 'H')}.to raise_error(RuntimeError, 'ship is already there')
	end

  it "should retrun true if no ship in a cell" do
    expect(board.check_cell(0,0)).to eq(true)
  end  

end
