class Character
  attr_reader :character, :name, :actor, :salary

  def initialize(character)
    @name = character[:name]
    @actor = character[:actor]
    @salary = character[:salary]
  end
end
