class Centaur
  attr_reader :name, :breed, :cranky, :standing, :action_count, :laying
  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @laying = false
    @action_count = 0
  end

  def run
    if @action_count < 3 && @laying == false
       @action_count += 1
    return 'Clop clop clop clop!'
  else
    return 'NO!'
  end
  end

  def shoot
    if @action_count < 3 && @laying == false
       @action_count += 1
    return 'Twang!!!'
  else
    return 'NO!'
  end
  end

  def cranky?
    if @action_count < 3
        @cranky = false
    else
      @cranky = true
    end
  end

  def standing?
    @standing
  end

  def laying?
    @laying
  end

  def lay_down
    @standing = false
    @laying = true
  end

  def sleep
    if @standing == true
      return 'NO!'
    else
      @action_count = 0
    end
  end

  def stand_up
    @standing = true
    @laying = false
  end

  def drink_potion
    if @standing == true && @action_count == 3
    @action_count = 0
  elsif @standing == false
    @action_count = 3
  else
    return 'Stuck!'
  end
  end

  end
