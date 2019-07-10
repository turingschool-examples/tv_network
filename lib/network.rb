class Network
  attr_reader :name, :shows
  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def all_characters
    @shows.map {|show| show.characters}.flatten
  end

  def highest_paid_actor
    highest = all_characters.max_by {|character| character.salary}
    highest.actor
  end

  def payroll
    salaries = {}
    all_characters.each do |character|
      salaries[character.actor] = character.salary
    end
    salaries
  end
end
