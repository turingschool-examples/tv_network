class Character

  attr_reader :name, :actor, 

  def initialize(person)
    @name = person[:name]
    @actor = person[:actor]
    @salary = person[:salary]
  end


end
