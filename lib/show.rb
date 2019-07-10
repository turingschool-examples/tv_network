class Show

  attr_reader :name, :creator, :characters

  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = characters
  end

  def total_salary
    @characters.map(&:salary)
    .map(&:to_i) # in case salary is in string
    .sum
  end
end
