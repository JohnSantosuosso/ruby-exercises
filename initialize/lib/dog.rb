class Dog
  attr_reader :name, :type
  def initialize (name, type)
    @name = name
    @type = type
  end

  def greeting
    return "Woof, I'm #{name} the #{type}!"
  end
end
