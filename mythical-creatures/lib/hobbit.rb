class Hobbit
  attr_accessor :name, :disposition, :age, :adult, :old, :ring, :short

  def initialize(name, disposition = 'homebody')
    @name = name
    @disposition = disposition
    @age = 0
    @adult = false
    @old = false
    @ring = false
    @short = true
  end

  def celebrate_birthday
    @age += 1
    @adult = true if age == 33 #becomes adult after 33rd birthday
    @old = true if age == 101 #becomes old after 101st birthday
  end

  def adult?
    @adult #initial setting (not adult)
  end

  def old?
    @old #initial setting (not old)
  end

  def has_ring?
    if @name == 'Frodo'
      @ring = true
    else
    @ring
    end
  end

  def is_short?
    @short
  end

end
