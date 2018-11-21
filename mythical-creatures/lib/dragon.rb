class Dragon
  def initialize(name, color, rider)
    @name = name
    @rider = rider
    @color = color
    @eat = 0
  end

  def name
    @name
  end

  def rider
    @rider
  end

  def color
    @color
  end

  def hungry?
    @eat >= 3 ? false : true
  end

  def eat
    @eat += 1
  end
end