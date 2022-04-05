class Medusa
  attr_accessor :name, :statues

  def initialize(name)
    @name = name
    @statues = []
  end

#stare at person which is an instance of Person class (named in test file as victim, victim2, victim3, etc.)
  def stare (person)
    person.stoned = true #person instance of Person class attribute stoned set to true
    @statues << person #person pushed to statues array
    #if number of statues is 4, the first statue is no longer stoned and removed from array
    if @statues.count == 4
      @statues[0].stoned = false
      @statues.delete_at(0)
    end
  end
end

class Person
  attr_accessor :name, :stoned
#any instantiation of Person class is not stoned by default
  def initialize (name)
    @name = name
    @stoned = false
  end

  def stoned?
    @stoned
  end

end
