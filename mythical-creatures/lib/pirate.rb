class Pirate
  attr_accessor :name, :job, :booty, :cursed, :heinous_act

  def initialize(name, job = 'Scallywag')
    @name = name
    @job = job
    @booty = 0
    @cursed = false
    @heinous_act = 0
  end

  def cursed?
    if @heinous_act > 2
      true
    else
      false
    end
  end

  def commit_heinous_act
    @heinous_act += 1
  end

  def rob_ship
    @booty += 100
  end

end
