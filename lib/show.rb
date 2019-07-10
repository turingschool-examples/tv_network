class Show
  attr_reader :name, :creator, :characters

  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = characters
    @total_salary = 0
  end

  def total_salary
    @characters.each do |character|
      @total_salary += character.salary
    end
    @total_salary
  end

end
