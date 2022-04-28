class Bag
  require_relative 'candy'
  attr_accessor :name, :empty, :count, :candies, :candies_taken

  def initialize
    @name = name
    @empty = true
    @candies = []
    @count = 0
    @candies_taken = []
  end

  def empty?
    @empty
  end

  def count
    @count = @candies.count
  end

  def << (candy)
    @candies << candy
    @empty = false
    count
  end

  def contains?(type)
    @candies.any? {|candy| candy.type == type}
  end

  def grab (type)
    removed = @candies.find {|candy| candy.type == type}
    count
    removed
    @candies.delete(removed)
  end

  def take (amount)
    if amount == 1
      @candies_taken << @candies[0]
      @candies.pop
      candies_taken[0]
      amount.times do
      @candies_taken << @candies.shift
    end
    @candies_taken[0]
  else
    amount.times do
    @candies_taken << @candies[0]
    @candies.pop
    end
    @candies_taken
  end
end
end


require 'pry'; binding.pry
