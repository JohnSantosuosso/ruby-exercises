class Ogre
  require 'human'
  attr_reader:name, :home
  attr_accessor :swings, :encounter_counter

  def initialize(name, home = 'Swamp')
    @name = name
    @home = home
    @swings = 0
    @encounter_counter = 0
  end

  def encounter(human)
    human.encounter_counter += 1
    @encounter_counter += 1

    if @encounter_counter % 3 == 0
      human.notice_ogre = true
      @swings += 1
    end

    if @swings % 2 == 0
      human.knocked_out = true
    end
  end

  def swing_at(human)
    @swings += 1
  end

  def apologize(human)
    human.knocked_out = false
  end


end
