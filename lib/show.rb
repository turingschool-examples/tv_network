require 'pry'

class Show
  attr_accessor :name, :creator, :characters

  def initialize(name, creator, character = [])
    @name = name
    @creator = creator
    @characters = character
    #passing in all 'character' objects as an array.
  end

  # def add_characters
  #   a = []
  #   a << Character.new
  #   a
  # end

  # def total_salary
  #   characters.do each {|character| character.salary + }
  # end

end
