class Network

  attr_reader :name, :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(new_show)
    @shows << new_show
  end

  def highest_paid_actor
    @shows.map(&:characters)
    .flatten
    .max_by { |character| character.salary }
    .actor
  end

  def payroll
    key_actors = @shows.map(&:characters)
    .flatten
    .map(&:actor)
    
    value_salary = @shows.map(&:characters)
    .flatten
    .map(&:salary)

    Hash[key_actors.zip(value_salary)]
  end
end
