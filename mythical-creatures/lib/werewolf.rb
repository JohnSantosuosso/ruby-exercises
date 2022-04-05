class Werewolf
  require 'victim'
  attr_reader :name, :location, :human, :wolf, :hunger

  def initialize(name, location = 'London')
    @name = name
    @location = location
    @human = true
    @wolf = false
    @change_count = 0
    @hunger = 0
  end

  def human?
    @human
  end

  def wolf?
    @wolf
  end

  def change!
    @change_count += 1
    if @change_count % 2 == 0 #is human
      @human = true
      @wolf = false
      @hunger = 0
    else #is werewolf
      @human = false
      @wolf = true
      @hunger = 10
    end
  end

  def consume(victim)
    if @wolf == false
      victim.status = :alive
    else
      victim.status = :dead
      @hunger = 0
    end
  end
end
