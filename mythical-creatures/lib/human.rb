class Human
  require 'ogre'
  attr_reader :name
  attr_accessor :encounter_counter, :notice_ogre

  def initialize(name = 'Jane')
    @name = name
    @encounter_counter = 0
    @notice_ogre = false
    @knocked_out = false
  end

  def notices_ogre?
    if @encounter_counter % 3 == 0
      @notice_ogre = true
    else
      return false
    end
  end

  def knocked_out?

  end

end
