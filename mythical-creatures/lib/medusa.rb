class Medusa
  attr_reader :name, :statues

  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(victim)
    if @statues.count >= 3
      @statues.first.stoned = false
      @statues.shift
    end
    if @statues.count <= 2
      @statues.push(victim)
      victim.stoned = true
    end
  end
end

class Person
  attr_accessor :stoned
  attr_reader :name

  def initialize(name)
    @name = name
    @stoned = false
  end

  def stoned?
    @stoned

  end
end