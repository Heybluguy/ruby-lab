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
    if !laying?
      if cranky? == false
        @energy -= 1
        "Twang!!!"
      else
        "NO!"
      end
    else
      "NO!"
    end
  end

  def run
    if !laying?
      if cranky? == false
        @energy -= 1
        "Clop clop clop clop!!!"
      else
        "NO!"
      end
    else
      "NO!"
    end
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
    if @standing == true
      @rested = true
    else
      "NO!"
    end
  end

  def rested?
    @energy == 3 ? true : false
  end

  def sick?
    @sick
  end
end