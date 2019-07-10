class Show
  attr_reader :name, :creator, :characters, :total_salary

  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = characters
  end

  def total_salary
    total_salary = @characters[0].salary + @characters[1].salary
  end

end
