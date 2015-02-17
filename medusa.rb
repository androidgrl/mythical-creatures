class Medusa
  attr_reader :name, :statues

  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(victim)
    @statues << victim
    victim.stoned = true
  end

end

class Person
  attr_accessor :name, :stoned

  def initialize(name)
    @name = name
    @stoned = false
  end

  def stoned?
    @stoned
  end

end


medusa = Medusa.new("girlie")
victim = Person.new("boi")
medusa.stare(victim)
puts victim.stoned?
