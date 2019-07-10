require 'pry'

class Character
  attr_accessor :name, :actor, :salary

  def initialize(person)
    @name = person [:name]
    @actor = person [:actor]
    @salary = person [:salary]
  end

end
