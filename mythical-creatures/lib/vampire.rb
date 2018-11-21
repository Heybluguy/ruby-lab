class Vampire
  attr_reader :name, :pet
  
  def initialize(name, pet = "bat")
    @name = name
    @pet = pet
    @drink = false
  end

  def thirsty?
    @drink == true ? false : true
  end

  def drink
    @drink = true
  end
end