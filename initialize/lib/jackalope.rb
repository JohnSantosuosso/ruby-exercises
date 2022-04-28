class Jackalope
  attr_reader :name
  attr_accessor :etymology

  def initialize(name)
    @name = name
    @etymology = ["Jackrabbit", "Antelope"]
  end

end
