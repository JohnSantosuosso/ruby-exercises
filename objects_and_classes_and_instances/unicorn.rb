class Unicorn
  attr_reader :name, :color, :magical_powers # allows Unicorn class to read name, color, & magical powers instances variables
  def initialize(name, color) #requires name and color parameters when initializing a Unicorn object
    @name = name
    @color = color
    @magical_powers = [] #initalizes a blank array named 'magical powers' for each instance of Unicorn
  end

  def add_power(power) #requires a power input when adding power
    @magical_powers << power #pushes the power input to magical powers array for each instance of Unicorn
  end

  def add_object_power(power_object) #provides alternative way to add powers to magical powers array by requires a power object input
    @magical_powers << power_object #pushes power_object input to magical powers array, this refers to an object
  end

end
