class Dragon
  attr_reader :name, :rider, :color

  def initialize(name, color, rider)
    @name = name
    @rider = rider
    @color = color
    @eat = 0
  end

  def hungry?
    @eat >= 3 ? false : true
  end

  def eat
    @eat += 1
  end
end