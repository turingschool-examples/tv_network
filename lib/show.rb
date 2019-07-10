require 'pry'

class Show
  attr_accessor :name, :creator, :characters

  def initialize(name, creator, character = [])
    @name = name
    @creator = creator
    @characters = character
  end

  def total_salary
    characters.sum {|character| character.salary }
  end

end
