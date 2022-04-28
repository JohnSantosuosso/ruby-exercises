class Power
  attr_reader :name, :energy_required #allows Power class to read parameters  name and energy required

  def initialize(name, energy_required)#requires name and energy_required paramters for initialization of a Power object
    @name = name
    @energy_required = energy_required
  end
end
