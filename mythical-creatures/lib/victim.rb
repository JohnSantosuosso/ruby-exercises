
class Victim
  attr_reader :name
  attr_accessor :status

  def initialize (name)
    @name = name
    @status = :alive
  end
end
