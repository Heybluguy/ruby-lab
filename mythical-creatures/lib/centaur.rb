class Centaur
  attr_reader :name, :breed, :energy

  def initialize(name, breed)
    @name = name
    @breed = breed
    @standing = true
    @energy = 3
    @sick = false
  end

  def shoot
    !laying? ? (cranky? == false ? activity("Twang!!!") : "NO!") : "NO!"
  end

  def run
    !laying? ? (cranky? == false ? activity("Clop clop clop clop!!!") : "NO!") : "NO!"
  end

  def cranky?
    @energy <= 0 ? true : false
  end

  def standing?
    @standing
  end

  def sleep
    @energy = 3
    "NO!" if @standing == true
  end

  def lay_down
    @standing = false
  end

  def laying?
    @standing == false ? true : false
  end

  def stand_up
    @standing = true
  end

  def drink_potion
    @sick = true if rested? == true
    @standing == true ? @rested = true : "NO!"
  end

  def rested?
    @energy == 3 ? true : false
  end

  def sick?
    @sick
  end

  def activity(sound)
    @energy -= 1
    sound
  end
  
end