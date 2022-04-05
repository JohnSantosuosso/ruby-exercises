class Direwolf
  require 'stark'
  #use attr_accessor because we will change the initial variables later on for an instance as part of one of the tests
  attr_accessor :name, :home, :size, :starks_to_protect, :hunting

  def initialize(name, home = 'Beyond the Wall', size = 'Massive')
    @name = name
    @home = home
    @size = size
    @starks_to_protect = []
    @hunting = true
  end

#protect stark if direwolf has same location as stark and has less than 3 starks in its array
  def protects(stark)
    if @home == stark.location && @starks_to_protect.length < 2
      stark.safe = true
      @starks_to_protect << stark
    end
  end

#hunts white walkers only if there are no starks to protect
  def hunts_white_walkers?
    if @starks_to_protect.length > 0
      @hunting = false
    else
      @hunting
    end
  end

  def leaves(stark) # loops through protected starks and makes them no longer protected/safe
    @starks_to_protect.each do |stark|
      stark.safe = false
    end
    @starks_to_protect = [] #clear array of protected sparks
    return stark #return name of stark(s) that are protected
  end



end
