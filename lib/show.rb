class Show
  attr_reader :name, :creator, :characters

  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = characters
    @total_salary = 0
  end

  def total_salary
    @characters.sum do |character|
      character.salary
    end
  end

end
