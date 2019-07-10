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
    show_characters = []
    @shows.each do |show|
      show_characters << show.characters
    end

    char = show_characters.flatten.max_by do |character|
      character.salary
    end

    char.actor
  end

  def payroll
    show_characters = []
    @shows.each do |show|
      show_characters << show.characters
    end

    char_salary = []
    show_characters.flatten.each do |character|
      char_salary << character.salary
    end

    char_actor = []
    show_characters.flatten.each do |character|
      char_actor << character.actor
    end

    payroll = {char_actor: char_salary}

  end

end
