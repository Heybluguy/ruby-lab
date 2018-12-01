class Werewolf
  attr_reader :name, :location

  def initialize(name, location = "London")
    @name = name
    @location = location
    @human = true
    @consume = false
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
    wolf? == true  && @consume == false ? true : false
  end

  def consume!(victim)
    victim.status = :dead
    @consume = true if @human == false
  end
  
end