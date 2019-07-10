class Character
  attr_reader :character, :name, :actor, :salary

  def initialize(character)
    @character = {
      name: "KITT",
      actor: "William Daniels",
      salary: 1_000_000
    }
    @name = @character[:name]
    @actor = @character[:actor]
    @salary = @character[:salary]
  end
end
