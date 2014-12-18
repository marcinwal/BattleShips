

module Errors

	def error_off v = false
		@off = v
	end

	def error_test
		raise 'test' unless @off
	end

	def error string
		raise string unless @off
	end


end