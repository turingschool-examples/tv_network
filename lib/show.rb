class Show
  attr_reader :name, :creator, :characters

  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = []
  end

  def add_character(character)
    @characters << character
  end

  def total_salary
    total_salary = @kitt.salary

  end

end
