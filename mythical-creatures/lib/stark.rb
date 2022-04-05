class Stark
  require 'direwolf'
  attr_accessor :name, :location, :safe, :house_words

  def initialize(name, location = "Winterfell", house_words = 'Winter is Coming')
    @name = name
    @location = location
    @safe = false
    @house_words = house_words
  end

  def safe?
    @safe
  end

  def house_words
    @house_words
  end

end
