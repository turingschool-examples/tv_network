class Show
  attr_reader :name, :creator, :characters

  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = characters
  end

  def add_character(character)
    @characters << character
  end

  def total_salary
    @characters.sum do |character|
      character.salary
    end
  end

end
