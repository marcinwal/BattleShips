class Ship

  attr_reader :length, :allowed_hits

  def initialize(length: length)
    @length = length
    @allowed_hits = length
  end

  def hit
		@allowed_hits -= 1
  end

  def floating?
    @allowed_hits > 0
  end


end