require_relative 'star.rb'

class SolarSystem

#Initialize Game
def initialize(part_of_solar_system)
  @part_of_solar_system = part_of_solar_system
  @stars_array = []
  (0..99).each { |i| @stars_array << Star.new('unknown_star', i) }
end

def show_solar_system

    #code here to show all the initialized stars in solar system

end

end
