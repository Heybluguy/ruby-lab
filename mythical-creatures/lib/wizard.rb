require './lib/spell'

class Wizard
  attr_reader :name

  def initialize(name, bearded: true, rested: true)
    @name = name
    @bearded = bearded
    @cast = 0
  end

  def bearded?
    @bearded
  end

  def incantation(spell)
    SPELL.each {|key, value| return value if key.include?(spell)}
  end

  def rested?
    @cast <= 2 ? true : false
  end

  def cast
    @cast += 1
    "MAGIC MISSILE!"
  end
end