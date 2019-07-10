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
    @shows.map { |show| show.characters }.flatten
  end

  def highest_paid_actor
    all_characters.max_by { |character| character.salary }.actor
  end

  def payroll
    payroll = {}
    all_characters.each do |character|
      payroll[character.actor] = character.salary
    end
    payroll
  end
end
