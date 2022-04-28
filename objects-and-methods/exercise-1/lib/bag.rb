class Bag
  require_relative 'candy'
  attr_reader :name, :empty, :count, :candies
  def initialize
    @name = name
    @empty = true
    @count = 0
    @candies = []
  end

  def empty?
    @empty
  end

  def count
    @candies.count
  end

  def << (candy)
    @candies << candy
    @count += 1
    @empty = false
  end

  def contains? (type)
    @candies.any? {|candy| candy.type == type}
  end


end

require 'pry'; binding.pry
