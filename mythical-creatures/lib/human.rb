class Human
  require 'ogre'
  attr_reader :name
  attr_accessor :encounter_counter, :notice_ogre, :knocked_out

  def initialize(name = 'Jane')
    @name = name
    @encounter_counter = 0
    @notice_ogre = false
    @knocked_out = false
  end

  def notices_ogre?
    @notice_ogre
  end

  def knocked_out?
    @knocked_out
  end

end
