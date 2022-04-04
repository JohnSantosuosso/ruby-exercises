class Wizard
  attr_accessor :name, :bearded, :rested, :cast

#initializes a new Wizard object with bearded set to true by default
  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @rested = true
    @cast = 0
  end

  def bearded?
    @bearded
  end

#defines incantation method which accepts string input
  def incantation (string)
    #adds sudo to string based on test requirements
    string.prepend('sudo ')
  end

  def rested?
    if @cast > 2
      @rested = false
    else
      @rested = true
    end
  end

  def cast
    @cast += 1
    return 'MAGIC MISSILE'
  end

end
