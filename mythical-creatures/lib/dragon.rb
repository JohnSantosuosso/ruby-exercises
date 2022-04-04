class Dragon
  attr_accessor :name, :color, :rider, :hunger, :meal_count

  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @hunger = true
    @meal_count = 0
  end

  def hungry?
    @hunger
  end

  def eat
    @meal_count +=1
    @hunger = false if meal_count == 3
  end


end
