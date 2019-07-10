class Network
  attr_reader :name, :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def highest_paid_actor
    characters = []
    salaries = []

    @shows.each do |show|
      characters << show.characters
    end
    characters

    characters.each do |character|
      salaries << character[0].salary
    end
    salaries

    # salaries.sort!
  end

end
