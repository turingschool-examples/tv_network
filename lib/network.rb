class Network
attr_reader :name, :shows

  def initialize(name, shows = [])
    @name = name
    @shows = shows
  end

  def add_show(show)
    @shows.push(show)
  end

  def highest_paid_actor
    characters_in_shows = []
    @shows.map do |show|
      show.characters.each do |character|
        characters_in_shows << character
      end
    end
    highest_paid_actor_object =
    characters_in_shows.max_by {|character| character.salary}
    highest_paid_actor_object.actor
  end

  def payroll
    payroll = {}
    @shows.each do |show|
      show.characters.each do |character|
        payroll[character.actor] = character.salary
      end
    end
    payroll
  end

end
