class Ogre
  require 'human'
  attr_reader:name, :home
  attr_accessor :swings

  def initialize(name, home = 'Swamp')
    @name = name
    @home = home
    @swings = 0
    @encounter_counter = 0
  end

  def encounter(human)
    #method from Human class passed to Ogre
    human.encounter_counter +=1
    if human.notices_ogre?
      swing_at(human)
    end
  end

  #ogre swings at object from Human class
  def swing_at(human)
      @swings += 1
      human.notice_ogre = true
  end

  def apologize(human)
    human.knocked_out = false
    @swings = 0
    @encounter_counter = 0
  end

end
