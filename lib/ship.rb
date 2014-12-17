class Ship

  attr_reader :length, :allowed_hits

  SHIPS = {aircraft: 5,battleship: 4, destroyer: 3,patrol: 2, submarine: 1 }

  def initialize(length)
    @length = length
    @allowed_hits = length
  end

  def hit
		@allowed_hits -= 1
  end

  def floating?
    @allowed_hits > 0
  end

  def size(length)
    @length = length
  end  

  def self.method_missing name,*args
      return new SHIPS[name] if SHIPS[name]
      super
  end    
end