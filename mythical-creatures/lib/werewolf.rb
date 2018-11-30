class Werewolf
  def initialize(name, location = "London")
    @name = name
    @location = location
    @human = true
  end

  def name
    @name
  end

  def location
    @location
  end

  def human?
    @human
  end

  def change!
    @human == true ? @human = false : @human = true
  end

  def wolf?
    @human == false ? true : false
  end

  def hungry?
    wolf? == true ? true : false
  end

  def consume!(food)
    food if @human == false
  end
end