

# convert_coordinates_for_array_grid

module Coord_to_array

	def read_input(string)
    l =  /[a-j]/i.match(string)
    n =  /\d+/.match(string)
    #to raise errors if not correct
    raise "wrong coordinates" if (l == nil) or (n == nil)
    return l[0].upcase.ord - 'A'.ord, n[0].to_i - 1
  end 

end