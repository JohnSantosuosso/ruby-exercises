class Centaur
  attr_accessor :name, :breed, :cranky, :standing, :count, :laying

  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @laying = false
    @count = 0
  end

  def shoot
    if @count == 3 || @laying == true
      @cranky = true
      'NO!'
    else
      @count += 1
      'Twang!!!'
    end
  end

  def run
    if @cranky == true || @laying == true
      'NO!'
    else
      @count += 1
      'Clop clop clop clop!'
    end
  end

  def cranky?
    @count == 3 ? true : @cranky = false
  end

  def standing?
    @standing
  end

  def laying?
    @laying
  end

  def sleep
    if @standing == true
      'NO!'
    else
      @standing = false
      @count = 0
      @cranky = false
    end
  end

  def lay_down
    @standing = false
    @laying = true
  end

  def stand_up
    @standing = true
    @laying = false
  end

  def drink_potion
    if @standing == true && @count == 3
      @cranky = false
      @count = 0
    elsif @standing == true && @count < 3
      'Stuck!'
    end
  end
end
