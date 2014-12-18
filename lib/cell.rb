class Cell

  attr_reader :ship

  def initialize
    @ship = nil
    @shot = false
  end

	def shoot_at #shot controll and the gamee engine level
    @shot = true
    if (@ship != nil && @ship.floating?) then @ship.hit end   
	end

	def shot?
		@shot
	end

  def load(ship)
    @ship = ship
  end  

end
