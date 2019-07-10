class Character
attr_reader :name, :actor, :salary

  def initialize(info)
    @name = info.fetch(:name)
    @actor = info.fetch(:actor)
    @salary = info.fetch(:salary)
  end

end
