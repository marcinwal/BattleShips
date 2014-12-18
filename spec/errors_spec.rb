require 'errors'

class Error; include Errors; end

describe 'errors' do 

	let(:error) {Error.new}

	it 'should raise the error "test"' do
		expect {error.error_test}.to raise_error(RuntimeError, 'test')
	end

	it 'should not raise the error "test"' do
		error.error_off(true)
		expect(lambda{error.error_test}).not_to raise_error
	end


end